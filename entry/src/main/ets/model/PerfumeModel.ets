export interface Perfume {
  name: string;
  image: Resource;
  category: string;
}

export const dummyPerfume: Perfume[] = [
  {
    name: 'Velvet Bloom',
    image: $r('app.media.dummyperfume1'),
    category: 'Romantic',
  },
  {
    name: 'Noim Timber',
    image: $r('app.media.dummyperfume2'),
    category: 'Masculine',
  },
  {
    name: 'Citrus Muse',
    image: $r('app.media.dummyperfume3'),
    category: 'Unisex',
  },
]