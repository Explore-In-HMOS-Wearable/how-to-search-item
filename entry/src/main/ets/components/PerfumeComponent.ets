@Component
export struct PerfumeComponent {
  @Prop name: string
  @Prop image: ResourceStr
  @Prop category: string

  build() {
    Column() {
      Image(this.image)
        .height(100)
        .width(120)
        .borderRadius(10)
        .objectFit(ImageFit.Contain)
        .padding({ bottom: 5 })
      Text(this.name).fontSize(11).fontColor(Color.Black).padding({ bottom: 2 })
      Text(this.category).fontSize(9).fontColor(Color.Black)
    }.padding(2).width('70%').borderRadius(20)
  }
}