/**
 * Author:HouGe
 * Date:2023/9/22
 * Describe:
 */
import { FontSize, FontWeight, ItemStyle, WEIGHT } from '../common/constants/Constants';

@Component
export struct ListItemComponent {
  index: number;
  name: Resource;
  vote: string;
  isSwitchDataSource: boolean;
  @State isChange: boolean = false;

  build() {
    Row() {
      Column() {
        if (this.index < 4) {
          Row() {
            Text(this.index.toString())
              .fontWeight(FontWeight.BOLD)
              .fontSize(FontSize.SMALL)
              .fontColor(Color.White)
          }
          .justifyContent(FlexAlign.Center)
          .size({width: ItemStyle.CIRCLE_TEXT_SIZE,height: ItemStyle.CIRCLE_TEXT_SIZE})
          .borderRadius(ItemStyle.CIRCLE_TEXT_BORDER_RADIUS)
          .backgroundColor($r('app.color.circle_text_background'))
        } else {
          Text(this.index.toString())
            .lineHeight(ItemStyle.TEXT_LAYOUT_SIZE)
            .textAlign(TextAlign.Center)
            .width(ItemStyle.TEXT_LAYOUT_SIZE)
            .fontWeight(FontWeight.BOLD)
            .fontSize(FontSize.SMALL)
        }
      }
      .width(ItemStyle.LAYOUT_WEIGHT_LEFT)
      .alignItems(HorizontalAlign.Start)

      Text(this.name)
        .width(ItemStyle.LAYOUT_WEIGHT_CENTER)
        .fontWeight(FontWeight.BOLDER)
        .fontSize(FontSize.MIDDLE)
        .fontColor(ItemStyle.COLOR_BLACK)

      Text(this.vote)
        .width(ItemStyle.LAYOUT_WEIGHT_RIGHT)
        .fontWeight(FontWeight.BOLDER)
        .fontSize(FontSize.MIDDLE)
        .fontColor(ItemStyle.COLOR_BLACK)
    }
    .height(ItemStyle.BAR_HEIGHT)
    .width(WEIGHT)
    .onClick(() => {

    })
  }

}