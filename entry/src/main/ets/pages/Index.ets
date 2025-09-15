import { PerfumeComponent } from '../components/PerfumeComponent';
import { SearchBar } from '../components/SearchBar';
import { Perfume } from '../model/PerfumeModel';
import { PerfumeViewModel } from '../viewmodel/PerfumeViewModel';

@Entry
@Component
struct Index {
  scroller: Scroller = new Scroller()
  @State searchInput: string = '';
  @State filteredPerfumesList: Array<Perfume> = []
  private viewModel: PerfumeViewModel = new PerfumeViewModel();

  private onSearch(searchInput: string) {
    this.viewModel.setSearchQuery(searchInput)
    this.filteredPerfumesList = this.viewModel.getFilteredPerfumesList()
  }

  aboutToAppear() {
    this.filteredPerfumesList = this.viewModel.getFilteredPerfumesList()
  }

  build() {
    Column() {
      SearchBar({
        onSearch: (searchInput: string) => {
          this.onSearch(searchInput)
        },
        placeholder: 'Search'
      }).padding({ bottom: 3 })

      Scroll(this.scroller) {
        Column() {
          ForEach(this.filteredPerfumesList, (perfume: Perfume) => {
            PerfumeComponent({
              name: perfume.name,
              image: perfume.image,
              category: perfume.category
            }).padding({ bottom: 4 })
            Divider().height(2).color(Color.Gray).padding({ left: 40, right: 40, bottom: 10 });
          })
        }.padding({ bottom: 25 })
      }.width('100%').height('100%')
    }.backgroundColor('#ffd4c890').padding({ top: 10, bottom: 10 }).width('100%').height('100%')
  }
}