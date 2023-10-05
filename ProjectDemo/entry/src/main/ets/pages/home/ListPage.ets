import CustomNavigation from '../../views/CustomNavigation';
import GoodsDataSource from '../../viewmodel/GoodsDataSource';

@Entry
@Component
struct ListPage {
  @State message: string = 'Hello World'
  private dataSource: GoodsDataSource = new GoodsDataSource();

  build() {
    Row() {
      Column() {
        CustomNavigation({ title: '商城' })
        TabBar()
      }
      .width('100%')
    }
    .height('100%')
  }
}

@Component
struct TabBar {
  build() {
    Tabs() {
      TabContent() {

      }.tabBar()
    }
  }
}