# Glimmer


![The example app running in iOS](https://github.com/waihanko/glimmer/blob/master/doc/animation.gif?raw=true)

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

**Note:** Length of `colors` and `stops`, must be same.
