#Primeira avalia��o de Arquitetura de Computadores
	 .data
# Cada elemento � guardado linearmente na mem., como um vetor. Por isso, eles s�o acessados pelo seu �ndice no vetor
# addr = baseAddr + (rowIndex*colSize + colIndex)*dataSize

imagem: .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 255 250 245 245 251 252 252 249 243 243 247 252
        .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 254 254 253 250 252 233 216 220 235 240 245 232
        .word 211 207 227 237 247 254 255 255 255 255 255 255
        .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 255 255 255 255 245 239 243 239 245 240 232 233
        .word 237 243 255 243 223 223 227 227 227 245 255 255
        .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 255 255 255 255 255 255 230 214 220 240 250 251
        .word 253 252 251 253 249 232 209 215 227 215 197 190
        .word 197 215 243 255 255 255 255 255 255 255 255 255
        .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 255 255 255 255 255 255 255 255 247 209 194 211
        .word 239 250 255 255 255 255 255 253 250 233 194 187
        .word 215 235 227 197 146 120 158 223 249 252 254 255
        .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 255 255 255 255 255 255 255 255 255 255 254 220
        .word 162 143 181 232 255 255 255 255 255 252 237 223
        .word 223 227 209 197 215 243 237 203 134 71 83 158
        .word 220 233 233 227 232 252 255 255 255 255 255 255
        .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 255 255 223 140 83 129 200 235 245 247 249 249
        .word 250 237 209 183 181 194 200 190 187 185 162 158
        .word 145 89 71 140 207 223 227 203 200 229 251 255
        .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 255 255 255 255 255 239 151 83 120 170 211 227
        .word 223 223 230 227 220 207 187 162 151 158 151 125
        .word 112 107 89 104 129 97 112 194 247 249 255 237
        .word 205 197 223 243 253 255 255 255 255 255 255 255
        .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 255 255 255 255 255 255 255 255 255 181 89 78
        .word 134 165 203 229 230 220 211 190 170 151 155 170
        .word 158 134 134 134 129 134 151 173 158 162 207 251
        .word 250 252 255 254 237 203 165 170 230 255 255 255
        .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 237 125 49 83 134 165 165 162 151 134 129 112
        .word 97 89 115 151 158 155 158 162 177 200 227 235
        .word 235 237 251 252 237 245 255 255 245 216 179 145
        .word 187 240 255 255 255 255 255 255 255 255 255 255
        .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 255 255 255 255 179 61 23 71 83 107 97 61
        .word 32 32 61 97 120 140 162 187 203 220 220 223
        .word 233 247 255 255 255 255 255 251 239 216 232 240
        .word 223 190 165 140 146 215 255 255 255 255 255 255
        .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 255 255 255 255 255 255 255 237 104 13 8 38
        .word 49 49 32 1 13 61 115 165 200 220 232 239
        .word 247 255 255 255 255 255 255 255 255 255 255 255
        .word 249 211 197 207 203 165 120 89 104 181 247 255
        .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 255 255 255 255 255 255 255 255 255 255 245 170
        .word 61 19 19 38 61 38 13 38 112 183 220 233
        .word 243 252 255 255 255 255 255 255 255 255 255 255
        .word 255 255 255 255 255 239 194 190 205 181 125 78
        .word 89 165 239 255 255 255 255 255 255 255 255 255
        .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 255 254 220 93 71 61 49 61 61 23 61 143
        .word 211 237 240 249 251 254 255 255 255 255 255 255
        .word 255 255 255 255 255 255 255 255 255 255 237 220
        .word 223 227 216 194 158 190 245 255 255 255 255 255
        .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 255 255 255 255 255 247 170 49 38 49 61 38
        .word 15 71 158 209 233 250 252 255 255 255 255 255
        .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 255 254 254 245 235 235 245 245 203 205 240 255
        .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 255 255 255 255 255 255 255 255 255 235 120 32
        .word 32 49 38 23 71 151 205 233 247 255 255 255
        .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 255 255 255 255 255 254 255 251 237 232 251 255
        .word 243 223 239 255 255 255 255 255 255 255 255 255
        .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 252 223 125 71 49 23 19 61 146 194 223 245
        .word 254 255 255 255 255 255 255 255 255 255 255 255
        .word 255 255 255 255 255 255 255 255 255 255 255 252
        .word 245 240 243 237 245 229 230 251 255 255 255 255
        .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 255 255 255 252 239 182 104 61 28 1 49 134
        .word 190 203 235 255 255 255 255 255 255 255 255 255
        .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 255 255 255 254 247 237 232 229 230 227 215 235
        .word 252 255 255 255 255 255 255 255 255 255 255 255
        .word 255 255 255 255 255 255 254 248 212 128 38 8
        .word 8 32 107 176 190 216 247 255 255 255 255 255
        .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 255 255 255 255 255 255 255 255 243 216 209 223
        .word 220 227 212 220 248 254 255 255 255 255 255 255
        .word 255 255 255 255 251 251 251 251 251 251 248 239
        .word 202 106 19 19 32 83 134 170 194 227 250 255
        .word 255 255 255 255 255 255 255 255 255 255 255 255
        .word 255 255 255 255 255 255 255 255 255 255 255 254
        .word 239 207 176 181 203 229 227 220 236 248 255 255
        .word 218 236 236 236 236 236 236 236 236 236 236 236
        .word 236 236 236 218 180 87 8 28 61 93 129 158
        .word 194 211 235 252 255 253 252 252 252 252 252 252
        .word 252 254 252 252 252 254 255 255 255 255 255 255
        .word 255 255 255 255 235 200 187 170 158 183 230 240
        .word 223 230 231 218 192 202 202 202 202 202 202 202
        .word 202 202 202 202 202 202 208 180 102 28 13 49
        .word 71 110 146 173 194 203 229 243 247 251 252 252
        .word 252 252 252 253 253 247 251 255 255 255 255 255
        .word 255 255 239 223 223 243 254 255 247 207 155 155
        .word 176 194 223 243 214 202 192 192 176 172 179 185
        .word 185 179 176 179 179 179 179 185 176 182 202 135
        .word 38 1 19 61 78 143 190 190 190 197 223 239
        .word 247 254 255 255 255 255 255 254 251 240 249 243
        .word 227 194 155 129 146 165 162 162 197 220 227 243
        .word 255 230 165 134 165 220 251 240 205 182 176 179
        .word 176 169 179 179 179 176 172 176 176 176 176 179
        .word 179 169 140 87 23 1 19 32 78 170 211 190
        .word 190 203 235 249 254 255 255 239 220 220 227 233
        .word 237 245 250 227 181 125 71 28 23 38 78 125
        .word 173 173 197 230 251 251 223 173 158 183 203 190
        .word 180 172 169 176 176 176 176 172 172 176 176 176
        .word 176 176 176 182 176 135 49 19 8 1 8 8
        .word 71 170 194 165 185 227 250 237 227 227 200 143
        .word 93 89 129 173 207 249 255 230 194 151 104 71
        .word 61 23 32 120 155 143 203 239 247 255 255 251
        .word 203 134 104 120 167 169 169 176 176 176 179 169
        .word 169 176 176 176 176 176 176 174 155 102 19 1
        .word 1 8 1 1 61 143 151 129 177 230 223 165
        .word 134 125 71 8 1 1 38 104 173 233 255 255
        .word 254 227 158 134 197 113 49 134 197 181 227 255
        .word 255 252 252 255 243 190 129 125 179 179 172 176
        .word 176 176 176 176 176 176 176 176 176 176 185 159
        .word 87 28 1 8 8 1 8 28 78 125 107 104
        .word 190 211 151 125 107 61 23 19 71 89 93 115
        .word 165 223 251 255 245 211 173 129 170 170 170 211
        .word 249 245 249 252 252 252 252 255 249 237 211 180
        .word 185 176 172 176 176 176 176 176 176 176 176 176
        .word 176 176 194 159 61 1 1 1 1 23 67 71
        .word 71 71 61 97 203 183 134 104 78 49 28 1
        .word 107 146 125 129 176 227 251 255 245 227 211 176
        .word 181 220 243 251 255 255 253 252 252 252 252 255
        .word 205 146 165 218 185 176 172 176 176 176 176 176
        .word 179 179 176 176 176 172 194 167 61 1 1 1
        .word 1 38 97 97 61 15 23 110 203 179 170 110
        .word 61 78 104 71 146 165 146 165 200 223 249 255
        .word 250 247 247 235 232 249 255 255 252 252 252 252
        .word 252 253 253 255 223 115 89 177 192 179 169 176
        .word 179 179 179 179 179 179 179 176 176 176 194 167
        .word 61 1 1 1 1 28 83 89 28 1 32 120
        .word 197 190 194 146 115 143 185 185 197 179 179 205
        .word 211 205 243 255 253 255 255 255 255 255 252 252
        .word 252 252 252 252 252 250 251 254 255 145 71 140
        .word 202 185 172 176 179 185 185 179 179 179 185 179
        .word 179 179 194 167 61 1 1 1 1 13 49 61
        .word 19 15 61 134 194 207 200 197 203 214 223 243
        .word 227 211 223 230 207 205 243 255 252 252 252 251
        .word 253 254 254 252 252 252 252 253 251 245 245 249
        .word 247 158 113 177 193 179 179 185 179 185 185 179
        .word 185 185 176 185 179 176 194 167 61 1 1 1
        .word 1 8 32 61 49 38 93 162 194 220 237 232
        .word 223 232 240 235 232 245 255 239 216 243 252 253
        .word 252 252 252 250 243 247 254 253 252 252 252 254
        .word 251 243 243 240 215 190 200 218 182 179 179 185
        .word 179 192 176 179 185 179 179 185 179 179 202 167
        .word 61 1 1 1 1 1 8 28 15 8 89 179
        .word 181 197 240 255 247 239 243 251 250 254 250 220
        .word 194 245 255 254 251 254 255 255 211 207 243 255
        .word 252 252 254 249 240 240 245 232 220 227 239 227
        .word 180 179 176 185 179 185 179 185 185 185 185 185
        .word 179 185 202 167 61 1 1 1 1 1 1 1
        .word 1 13 97 177 165 173 205 237 254 254 254 253
        .word 254 255 235 200 207 237 255 255 255 252 229 232
        .word 209 176 190 237 255 254 253 247 243 247 243 229
        .word 211 233 255 236 185 185 185 194 185 185 185 185
        .word 192 185 179 185 185 185 202 167 61 1 1 1
        .word 1 1 1 1 1 49 120 158 162 158 165 194
        .word 229 243 252 254 255 255 216 179 197 151 162 197
        .word 223 200 134 120 187 207 190 205 251 254 253 250
        .word 252 253 239 220 209 227 223 193 185 192 135 111
        .word 185 185 192 194 202 194 185 185 185 185 202 167
        .word 61 1 1 1 1 1 1 1 1 61 120 140
        .word 158 162 155 170 190 207 229 245 255 245 207 165
        .word 140 49 71 115 151 151 110 97 190 250 235 211
        .word 240 252 253 253 255 250 233 223 223 170 113 125
        .word 192 185 70 8 185 192 185 174 174 179 192 185
        .word 185 185 208 174 61 1 1 1 1 1 1 1
        .word 1 28 93 134 140 170 170 173 173 177 197 220
        .word 243 229 211 181 107 61 104 125 129 158 190 207
        .word 243 255 255 250 235 249 253 252 249 240 232 240
        .word 233 93 8 102 202 172 61 1 185 192 135 83
        .word 67 102 167 194 192 185 202 167 61 1 1 1
        .word 1 1 1 1 1 1 61 140 129 151 176 185
        .word 179 173 177 197 214 223 235 232 187 176 187 200
        .word 190 187 214 240 253 255 254 253 249 243 251 249
        .word 240 237 229 245 230 93 15 102 208 185 70 8
        .word 192 192 102 23 8 49 167 208 192 192 202 167
        .word 61 1 1 1 1 1 1 1 1 1 38 134
        .word 173 125 151 194 211 197 190 194 197 216 235 232
        .word 209 197 205 205 177 165 223 255 255 255 255 255
        .word 255 251 252 252 249 243 235 240 220 89 15 102
        .word 208 179 70 8 202 192 102 15 1 49 167 208
        .word 202 192 202 167 67 1 1 1 1 1 1 1
        .word 1 1 8 107 227 151 125 158 205 209 181 197
        .word 205 220 220 211 211 207 220 220 194 170 177 151
        .word 162 194 203 187 190 237 255 255 247 237 240 240
        .word 209 83 15 102 208 179 70 8 202 202 102 19
        .word 1 32 97 111 135 176 208 174 61 1 1 1
        .word 1 1 1 1 1 1 1 49 170 158 120 129
        .word 177 200 183 194 214 220 209 200 194 185 151 120
        .word 104 93 71 61 78 120 129 110 115 207 251 255
        .word 243 233 239 233 194 71 8 102 208 179 70 8
        .word 202 192 102 15 1 8 13 8 61 159 222 182
        .word 61 1 1 1 1 1 1 1 1 1 1 13
        .word 78 155 134 129 158 185 185 190 215 216 190 155
        .word 129 115 78 49 49 71 83 115 134 151 155 146
        .word 151 197 235 243 235 233 237 220 176 61 13 111
        .word 208 185 70 8 179 135 67 13 1 8 1 1
        .word 38 159 231 182 61 1 1 1 1 1 1 1
        .word 1 1 1 8 67 174 159 140 151 170 170 185
        .word 211 215 162 97 71 78 112 140 143 155 197 223
        .word 237 240 249 255 252 220 220 216 216 229 237 205
        .word 155 49 15 111 202 194 70 8 135 23 15 8
        .word 1 1 1 1 49 167 231 180 70 8 1 1
        .word 1 1 1 1 1 1 1 8 75 192 192 135
        .word 134 158 158 165 197 205 162 129 162 181 200 190
        .word 162 143 146 146 165 205 240 253 245 235 220 197
        .word 197 220 220 190 146 38 8 111 202 194 70 8
        .word 49 1 1 1 1 1 1 1 32 78 104 83
        .word 32 1 1 1 1 1 1 1 1 1 1 8
        .word 75 192 202 159 134 151 158 155 179 197 190 183
        .word 194 179 155 140 134 140 165 173 190 214 233 235
        .word 230 235 223 203 205 215 187 162 134 61 13 61
        .word 111 159 70 15 8 1 1 1 1 1 1 1
        .word 8 13 15 13 8 1 1 1 1 1 1 1
        .word 1 1 1 8 67 192 208 185 159 134 151 140
        .word 143 170 183 181 185 173 155 162 176 185 203 227
        .word 239 245 243 243 243 247 243 230 215 197 162 134
        .word 129 93 32 8 28 67 38 19 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 8 67 182 208 208
        .word 182 146 145 146 120 134 155 162 170 177 190 214
        .word 230 233 237 255 255 255 255 255 255 255 255 227
        .word 187 158 140 97 151 112 19 1 1 1 8 13
        .word 1 1 1 1 1 1 1 1 1 8 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 8
        .word 75 182 208 208 208 182 151 151 125 120 143 165
        .word 173 194 220 227 227 230 230 235 240 245 249 254
        .word 255 250 215 165 134 125 107 110 181 97 1 1
        .word 1 1 1 8 1 1 1 1 1 1 1 1
        .word 1 8 8 1 1 1 1 1 1 1 1 1
        .word 1 1 1 13 75 192 208 202 202 202 180 134
        .word 129 134 155 181 190 205 211 194 181 185 185 190
        .word 203 214 223 233 235 207 143 107 112 113 97 190
        .word 183 61 1 1 1 1 1 8 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 8 75 202 192 135
        .word 135 179 202 111 93 107 134 162 183 194 185 170
        .word 158 158 158 158 162 158 170 183 165 134 107 115
        .word 113 107 165 255 134 15 1 1 1 1 1 8
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 8
        .word 75 208 159 49 38 135 185 75 28 15 38 71
        .word 89 134 146 151 143 125 120 115 97 78 83 110
        .word 120 129 134 115 104 151 239 235 71 1 1 1
        .word 1 1 1 8 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 8 87 231 167 28 1 67 75 19
        .word 1 1 15 38 49 61 71 78 61 38 38 32
        .word 32 38 71 115 134 134 104 93 151 230 255 173
        .word 38 1 1 1 1 1 1 8 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 8 75 174 104 19
        .word 1 13 1 1 1 49 71 38 61 61 49 38
        .word 23 8 8 1 15 61 107 115 97 78 89 151
        .word 223 255 233 89 8 1 1 1 1 1 1 8
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 8
        .word 32 61 15 1 1 1 1 1 1 112 170 93
        .word 71 97 89 71 61 61 49 38 71 115 113 71
        .word 38 78 162 239 255 249 173 28 1 1 1 1
        .word 1 1 1 8 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 110 230 194 83 89 110 129 134 125 112 113
        .word 146 134 89 61 83 197 255 255 255 227 97 8
        .word 1 1 1 1 1 1 1 8 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 49 179 254 200 129 97 120
        .word 151 146 134 145 155 113 104 170 232 253 254 255
        .word 252 179 28 1 1 1 1 1 1 1 1 8
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 8 129 255
        .word 249 232 185 134 113 140 170 151 89 93 176 243
        .word 255 254 252 255 223 104 1 1 1 1 1 1
        .word 1 1 1 8 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 93 237 255 255 245 216 158 125 151 120
        .word 115 183 243 255 254 252 254 255 173 28 1 1
        .word 1 1 1 1 1 1 1 8 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 61 203 255 255 255 255
        .word 214 134 120 104 146 232 255 255 255 252 255 240
        .word 120 1 1 1 1 1 1 1 1 1 1 8
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 38 165
        .word 255 255 245 205 145 97 78 71 89 134 200 237
        .word 252 253 255 194 61 1 1 1 1 1 1 1
        .word 1 1 1 8 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 23 134 255 247 173 61 1 1 1 1
        .word 1 1 49 146 216 253 252 129 8 1 1 1
        .word 1 1 1 1 1 1 1 8 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 8 110 252 179 61 1
        .word 1 1 1 1 1 1 1 38 146 240 220 83
        .word 1 1 1 1 1 1 1 1 1 1 1 8
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 13 89
        .word 173 78 89 49 1 1 1 1 1 1 71 179
        .word 220 205 129 32 1 1 1 1 1 1 1 1
        .word 1 1 1 8 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 8 32 78 115 165 78 1 1 1 1
        .word 1 32 158 252 239 194 71 8 1 1 1 1
        .word 1 1 1 1 1 1 1 8 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 8 61 203 216 83
        .word 1 1 1 1 1 97 230 255 233 179 38 1
        .word 1 1 1 1 1 1 1 1 1 1 1 8
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 13
        .word 89 214 216 83 1 1 1 1 49 179 255 255
        .word 240 134 23 1 1 1 1 1 1 1 1 1
        .word 1 1 1 8 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 8 61 162 179 71 1 1 1 1
        .word 134 240 255 254 232 71 8 1 1 1 1 1
        .word 1 1 1 1 1 1 1 8 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 38 146 134 49
        .word 1 1 1 1 120 230 255 245 176 32 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 8
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 8
        .word 49 158 93 15 1 1 1 1 38 179 255 235
        .word 110 13 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 8 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 8 49 143 61 1 1 1 1 1
        .word 1 115 243 214 38 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 8 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 23 61 19 1
        .word 1 1 1 1 1 71 194 170 8 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 8
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 38 115 104
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 8 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 15 38 38 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 8 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 8
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 8 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 8 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 8
        .word 8 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 8 28 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 8 19 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 11 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 1
        .word 1 1 1 1 1 1 1 1 1 1 1 8

H:  	.word 0:256 # Eixo x do histograma de tamanho Lmax+1. E: .word x:y aloca y inteiros iniciados com valor x.
Lmax:	.word 255 # N�vel de cor m�xima. A cor � representada como um valor de 0 at� 255.
M:	.word 64 # Linhas da imagem
N:	.word 81 # Colunas da imagem
vir:	.asciiz ", " # V�rgula
tam:	.asciiz "tamanho: " # N�o sei se vou usar isso

	.text
main:
	
	#jal imprime_vetor
	jal processar
	jal imprime_vetor
	
	li $v0, 10
	syscall # FIM
	
processar:
	# Procede com o algoritmo dado pelo professor para melhorar a distribui��o de cores na imagem

	la $s0, H # Iterador do vetor recebendo seu endere�o base.
	la $s1, imagem # Iterador da matriz recebendo seu endere�o base.
	lw $t0, Lmax # Tamanho do vetor.
	lw $t1, M # Linhas da matriz.
	lw $t2, N # Colunas da matriz.
	subi $t8, $t1, 1 # M-1
	subi $t9, $t2, 1 # N-1
	# $t4 cont�m endere�o ap�s �ltimo valor na matriz.
	# Se o iterador $s1 == $t4, o 'for' deve parar
	# O c�lculo � feito pela f�rmula: addr = baseAddr + (rowIndex*colSize + colIndex)*dataSize
	mul $t4, $t8, $t1 #  rowIndex*colSize
	add $t4, $t4, $t9  # + colIndex
	sll $t4, $t4, 2 #    *dataSize
	add $t4, $t4, $s1 #  +baseAddr
	
	for:
	#li��o do dia: 'lw' (e possivelmente 'sw') s� funciona para endere�os m�ltiplos de 4
		lw $t5, 0($s1) # $t5 = cor da imagem = f(x,y)
		sll $t5, $t5, 2
		add $t5, $t5, $s0  #$t5 = endere�o do elemento no vetor H a ser incrementado. H[f(x,y)]
		
		lw $t3, ($t5) # Pega o valor que est� em H[f(x,y)]
		addi $t3, $t3, 1 # Soma em 1
		sw $t3, ($t5) # Guarda valor incrementado em H[f(x,y)]
		
		addi $s1, $s1, 4 # Pr�ximo elemento da matriz
		blt $s1, $t4, for # if i < Lmax, pr�xima itera��o
		
	jr $ra
	

imprime_vetor:
	# Essa fun��o imprime especificamente os elementos do vetor H
	# de tamanho Lmax+1
	addi $sp, $sp, -16
	sw $t0, 0($sp) # Auxiliar usado na instru��o SLT - set on less than
	sw $t1, 4($sp) # Endere�o do vetor
	sw $t2, 8($sp) # Tamanho do vetor, ser� usado para sair do loop
	sw $ra, 12($sp)
	# N�o � preciso iniciar $t0
	la $t1, H
	lw $t2, Lmax # At� aqui $t2=um n�mero, mas temos que converter o �NDICE NO VETOR em ENDERE�O NA MEM�RIA
	addi $t2, $t2, 1
	sll $t2, $t2, 2 # $t2 = 4*$t2
	add $t2, $t2, $t1 # Agora $t2 representa o endere�o na mem�ria que cont�m o elemento 0 do vetor
	
	loop_print:
		li $v0, 1
		lw $a0, 0($t1)
		syscall
		
		li $v0, 4 # Imprimir String
		la $a0, vir
		syscall
		
		addi $t1, $t1, 4 # Atualiza �ndice do vetor para o pr�ximo elemento
		slt $t0, $t1, $t2 # $t0 = $t1 < $t2
		beq $t0, 0, fim_print # Se $t0 for falso, sai do loop
		j loop_print
	
	fim_print:
		# Aqui termina a fun��o
		lw $t0, 0($sp)
		lw $t1, 4($sp)
		lw $t2, 8($sp)
		lw $ra, 12($sp)
		addi $sp, $sp, 16
		jr $ra
		
trash:
# C�lculo do endere�o na mem�ria do elemento da matriz atual
			#mult $a0, $t4, $t2 # addr = rowIndex*colSize
			#add $a0, $a0, $t5 # 	  + colIndex
			#sll $a0, $a0, 2 #	  *dataSize (4)
			#add $a0, $a0, 
			
			#addi $t5, $t5, 4
			#addi $t3 $t3, 1 # i=i+1
			#beq $t3, $t0, fim_for1
