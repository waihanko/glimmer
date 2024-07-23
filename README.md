# Glimmer

<img src="https://github.com/waihanko/image_comparator/assets/37291373/0575e8d3-20f8-4188-afe4-bd12cfe1a16f" width="240" height="500">&nbsp;<img src="https://github.com/waihanko/image_comparator/assets/37291373/509558f2-4722-402d-a7d9-1f45b918849d" width="240" height="500">&nbsp;<img src="https://github.com/waihanko/image_comparator/assets/37291373/b6c02b0b-f8da-4677-9745-ce2c0a95efe2" width="240" height="500">&nbsp;<img src="https://github.com/waihanko/image_comparator/assets/37291373/aeb11d0e-cd48-4dd7-aec7-dc6c04f155cd" width="240" height="500">
<img src="https://github.com/waihanko/image_comparator/assets/37291373/4ff754b2-88aa-451c-bcf3-133fc69c264a" width="240" height="500">
## Usage

```
Glimmer(
                      isActive: true,
                      stroke: 2,
                      radius: 24,
                      clockwise: false,
                      duration: const Duration(seconds: 20),
                      colors: const [Colors.yellow, Colors.white, Colors.transparent],
                      child: IconButton(
                        color: Colors.yellow,
                        onPressed: () => {},
                        icon: const Icon(Icons.abc),
                      ),
                    ),
                
      
```


## Parameters

| Parameter   | Type         | Description                              |
|-------------|--------------|------------------------------------------|
| `isActive`  | bool         | Is glimmer animation active or not       |
| `stroke`    | double       | Width of Glimmer Effect.                 |
| `radius`    | double       | Radius Corner                            |
| `clockwise` | bool         | Glimmer direction.                       |
| `duration`  | Duration     | Glimmer Speed.                           |
| `colors`    | List<Colors> | List of Glimmer Colors                   |
| `stops`     | List<Stops>  | List of Glimmer Gradient Effect          |
| `child`     | Widget       | Child widget                             |
| `shape`     | ShapeBorder       | RoundedRectangleBorder (or) CircleBorder |

**Note:**  `colors` and `stops`, must be same.
