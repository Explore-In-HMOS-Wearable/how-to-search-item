@Component
export struct SearchBar {
  @Prop placeholder: string = '';
  onSearch: (type: string) => void = () => {
  };

  build() {
    Search({ placeholder: this.placeholder })
      .searchIcon({
        src: $r('app.media.search')
      })
      .width('60%')
      .height('13%')
      .backgroundColor(Color.Gray)
      .onChange((value: string) => {
        this.onSearch(value)
      })
      .onSubmit((value: string) => {
        this.onSearch(value)
      })
  }
}