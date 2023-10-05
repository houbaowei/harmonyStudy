/**
 * Author:HouGe
 * Date:2023/9/22
 * Describe:
 */
import { FontSize, ListHeaderStyle } from '../common/constants/Constants';

@Extend(Text) function listHeaderTextStyle() {
  .fontSize(FontSize.SMALL)
  .fontWeight(ListHeaderStyle.FONT_WEIGHT)
  .fontColor($r('app.color.font_description'))
}

@Component
export struct ListHeaderComponent {
  paddingValue: Padding | Length;
  widthValue: Length;

  build() {
    Row() {
      Text($r('app.string.page_number')).listHeaderTextStyle().width(ListHeaderStyle.LAYOUT_WEIGHT_LEFT)
      Text($r('app.string.page_type')).listHeaderTextStyle().width(ListHeaderStyle.LAYOUT_WEIGHT_CENTER)
      Text($r('app.string.page_vote')).listHeaderTextStyle().width(ListHeaderStyle.LAYOUT_WEIGHT_RIGHT)
    }
    .width(this.widthValue).padding(this.paddingValue)
  }
}

/* 全局自定义构建函数 */
@Builder
export function MyGlobalBuilderFunction() {
  Text('MyGlobalBuilderFunction').fontSize(20).fontColor(Color.Red).fontWeight(FontWeight.Bold)
}