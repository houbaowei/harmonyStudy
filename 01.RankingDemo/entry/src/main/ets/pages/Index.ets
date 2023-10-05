import { RankModel } from '../model/RankModel';
import { RankViewModel } from '../viewmodel/RankViewModel';
import { ListHeaderComponent, MyGlobalBuilderFunction } from '../view/ListHeaderComponent';
import { TITLE, TIME, WEIGHT, Style, APP_EXIT_INTERVAL } from '../common/constants/Constants';
import { ListItemComponent } from '../view/ListItemComponent';

let rankViewModel: RankViewModel = new RankViewModel();

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'
  @State dataSource1: RankModel[] = [];
  @State dataSource2: RankModel[] = [];

  aboutToAppear() {
    this.dataSource1 = rankViewModel.loadRankDataSource1();
    this.dataSource2 = rankViewModel.loadRankDataSource2();
  }

  build() {
    Navigation() {
      Column() {
        ListHeaderComponent({
          paddingValue: {
            left: Style.RANK_PADDING,
            right: Style.RANK_PADDING
          },
          widthValue: Style.CONTENT_WIDTH
        })
          .margin({
            top: Style.HEADER_MARGIN_TOP,
            bottom: Style.HEADER_MARGIN_BOTTOM
          })
        this.RankList(Style.CONTENT_WIDTH)
      }
      .width('100%')
      .height('100%')
      .backgroundColor($r('app.color.background'))
    }
    .backgroundColor(Color.White)
    .title('排行榜')
    .titleMode(NavigationTitleMode.Mini)
    .hideBackButton(true)
    .menus(this.NavigationMenu())
  }

  @Builder NavigationTitle() {
    Row() {
      Text("排行榜")
    }
    .width('85%')
    .height('100%')
    .backgroundColor(Color.Transparent)
    .margin({ right: 20 })
    .justifyContent(FlexAlign.Center)
  }

  @Builder NavigationMenu() {
    Row() {
      Button({ type: ButtonType.Capsule, stateEffect: true }) {
        Image($r('app.media.loading')).size({ width: 20, height: 20 })
      }
      .width(40)
      .height(30)
      .backgroundColor(Color.Transparent)
      .onClick(() => {

      })
    }
  }

  @Builder RankList(widthValue: Length) {
    Column() {
      List({ space: 10 }) {
        ForEach(this.dataSource1,
          (item: RankModel, index) => {
            ListItem() {
              ListItemComponent({
                index: index + 1,
                name: item.fruitName,
                vote: item.vote
              })
            }
          },
          item => JSON.stringify(item))
      }
      .width(WEIGHT)
      // .height(Style.LIST_HEIGHT)
      .divider({ strokeWidth: Style.STROKE_WIDTH })
    }
    .padding({
      left: Style.RANK_PADDING,
      right: Style.RANK_PADDING
    })
    .borderRadius(Style.BORDER_RADIUS)
    .width(widthValue)
    .height(300)
    .alignItems(HorizontalAlign.Center)
    .backgroundColor(Color.White)

  }
}