.class public final Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$b$b;
.super Ljava/lang/Object;
.source "FTTHttpDownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$c;

.field public final b:Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$d;

.field public final synthetic c:Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$b;


# direct methods
.method public constructor <init>(Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$b;Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$b$b;->c:Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$b;

    .line 5
    .line 6
    new-instance p1, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$d;

    .line 7
    .line 8
    invoke-direct {p1}, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$d;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$b$b;->b:Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$d;

    .line 12
    .line 13
    new-instance p1, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$c;

    .line 14
    .line 15
    invoke-direct {p1, p2}, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$c;-><init>(Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$c;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$b$b;->a:Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$c;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$d;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$b$b;->b:Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public final run()V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$b$b;->b:Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$d;

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    iput-object v1, v0, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$d;->a:Ljava/lang/String;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    iput v2, v0, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$d;->b:I

    .line 10
    .line 11
    iput-object v1, v0, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$d;->c:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v3, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$a;->EHTTP_DOWNLOAD_STATE_IN_PROGRESS:Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$a;

    .line 14
    .line 15
    iput-object v3, v0, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$d;->d:Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$a;

    .line 16
    .line 17
    sget-object v3, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$a;->EHTTP_DOWNLOAD_STATE_FAIL:Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$a;

    .line 18
    .line 19
    iput-object v3, v0, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$d;->d:Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$a;

    .line 20
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 21
    .line 22
    :try_start_1
    new-instance v0, Ljava/net/URL;

    .line 23
    .line 24
    iget-object v3, p0, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$b$b;->a:Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$c;

    .line 25
    .line 26
    iget-object v3, v3, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$c;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/firsttouchgames/dls7/OfflineProvider25;->route(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 36
    .line 37
    :try_start_2
    const-string v3, "Accept-Encoding"

    .line 38
    .line 39
    const-string v4, "identity"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    const-string v3, "GET"

    .line 45
    .line 46
    iget-object v4, p0, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$b$b;->a:Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$c;

    .line 47
    .line 48
    iget-object v4, v4, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$c;->f:Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 52
    move-result v4

    .line 53
    .line 54
    if-nez v4, :cond_0

    .line 55
    .line 56
    const-string v3, "POST"

    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception v2

    .line 59
    .line 60
    goto/16 :goto_a

    .line 61
    :catch_0
    move-exception v2

    .line 62
    .line 63
    goto/16 :goto_7

    .line 64
    .line 65
    .line 66
    :cond_0
    :goto_0
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 67
    .line 68
    iget-object v3, p0, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$b$b;->a:Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$c;

    .line 69
    .line 70
    iget v3, v3, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$c;->d:I

    .line 71
    .line 72
    mul-int/lit16 v3, v3, 0x3e8

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 76
    .line 77
    iget-object v3, p0, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$b$b;->a:Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$c;

    .line 78
    .line 79
    iget v3, v3, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$c;->d:I

    .line 80
    .line 81
    mul-int/lit16 v3, v3, 0x3e8

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 85
    .line 86
    iget-object v3, p0, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$b$b;->a:Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$c;

    .line 87
    .line 88
    iget-object v3, v3, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$c;->g:Ljava/util/HashMap;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 92
    move-result-object v3

    .line 93
    .line 94
    .line 95
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 96
    move-result-object v3

    .line 97
    .line 98
    .line 99
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    move-result v4

    .line 101
    .line 102
    if-eqz v4, :cond_1

    .line 103
    .line 104
    .line 105
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    move-result-object v4

    .line 107
    .line 108
    check-cast v4, Ljava/lang/String;

    .line 109
    .line 110
    iget-object v5, p0, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$b$b;->a:Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$c;

    .line 111
    .line 112
    iget-object v5, v5, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$c;->g:Ljava/util/HashMap;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    move-result-object v5

    .line 117
    .line 118
    check-cast v5, Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v4, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    goto :goto_1

    .line 123
    .line 124
    :cond_1
    iget-object v3, p0, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$b$b;->a:Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$c;

    .line 125
    .line 126
    iget-object v3, v3, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$c;->f:Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 130
    move-result v3

    .line 131
    .line 132
    if-nez v3, :cond_2

    .line 133
    .line 134
    const-string v3, "Content-length"

    .line 135
    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    iget-object v5, p0, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$b$b;->a:Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$c;

    .line 142
    .line 143
    iget-object v5, v5, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$c;->f:Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    .line 147
    move-result-object v5

    .line 148
    array-length v5, v5

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string v5, ""

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object v4

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/4 v3, 0x1

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 177
    move-result-object v3

    .line 178
    .line 179
    iget-object v4, p0, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$b$b;->a:Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$c;

    .line 180
    .line 181
    iget-object v4, v4, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$c;->f:Ljava/lang/String;

    .line 182
    .line 183
    const-string v5, "UTF-8"

    .line 184
    .line 185
    .line 186
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 187
    move-result-object v4

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 194
    .line 195
    :cond_2
    iget-object v3, p0, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$b$b;->a:Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$c;

    .line 196
    .line 197
    iget-boolean v3, v3, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$c;->c:Z

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 204
    move-result v3

    .line 205
    .line 206
    const/16 v4, 0xc8

    .line 207
    .line 208
    if-ne v3, v4, :cond_5

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 212
    move-result-object v4

    .line 213
    .line 214
    .line 215
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 216
    move-result-object v4

    .line 217
    .line 218
    .line 219
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 220
    move-result-object v4

    .line 221
    .line 222
    .line 223
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 224
    move-result v5

    .line 225
    .line 226
    if-eqz v5, :cond_3

    .line 227
    .line 228
    .line 229
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 230
    move-result-object v5

    .line 231
    .line 232
    check-cast v5, Ljava/util/Map$Entry;

    .line 233
    .line 234
    .line 235
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 236
    move-result-object v6

    .line 237
    .line 238
    check-cast v6, Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 242
    move-result-object v5

    .line 243
    .line 244
    .line 245
    invoke-static {v5}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 246
    goto :goto_2

    .line 247
    .line 248
    :cond_3
    const-string v4, "Content-length"

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v4, v2}, Ljava/net/URLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    .line 252
    move-result v2

    .line 253
    .line 254
    new-instance v4, Ljava/io/BufferedInputStream;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 258
    move-result-object v5

    .line 259
    .line 260
    .line 261
    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    .line 263
    const/16 v1, 0x1000

    .line 264
    .line 265
    :try_start_3
    new-array v1, v1, [B

    .line 266
    .line 267
    .line 268
    :goto_3
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    .line 269
    move-result v5

    .line 270
    const/4 v6, -0x1

    .line 271
    .line 272
    if-eq v5, v6, :cond_4

    .line 273
    .line 274
    iget-object v6, p0, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$b$b;->c:Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$b;

    .line 275
    .line 276
    .line 277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 278
    move-result-wide v7

    .line 279
    .line 280
    iput-wide v7, v6, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$b;->b:J

    .line 281
    .line 282
    iget-object v6, p0, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$b$b;->c:Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$b;

    .line 283
    .line 284
    iget v6, v6, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$b;->a:I

    .line 285
    .line 286
    iget-object v7, p0, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$b$b;->a:Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$c;

    .line 287
    .line 288
    iget v7, v7, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$c;->e:I

    .line 289
    .line 290
    .line 291
    invoke-static {v6, v7, v1, v5, v2}, Lcom/firsttouchgames/ftt/FTTJNI;->OnHttpDownloadProgress(II[BII)V

    .line 292
    goto :goto_3

    .line 293
    :catchall_1
    move-exception v2

    .line 294
    move-object v1, v4

    .line 295
    .line 296
    goto/16 :goto_a

    .line 297
    :catch_1
    move-exception v2

    .line 298
    move-object v1, v4

    .line 299
    .line 300
    goto/16 :goto_7

    .line 301
    :cond_4
    monitor-enter p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 302
    .line 303
    :try_start_4
    iget-object v1, p0, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$b$b;->b:Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$d;

    .line 304
    .line 305
    iput v3, v1, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$d;->b:I

    .line 306
    .line 307
    const-string v2, "Date"

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 311
    move-result-object v2

    .line 312
    .line 313
    iput-object v2, v1, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$d;->a:Ljava/lang/String;

    .line 314
    .line 315
    iget-object v1, p0, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$b$b;->b:Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$d;

    .line 316
    .line 317
    const-string v2, "Location"

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    .line 325
    iget-object v1, p0, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$b$b;->b:Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$d;

    .line 326
    .line 327
    sget-object v2, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$a;->EHTTP_DOWNLOAD_STATE_SUCCESS:Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$a;

    .line 328
    .line 329
    iput-object v2, v1, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$d;->d:Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$a;

    .line 330
    monitor-exit p0

    .line 331
    goto :goto_5

    .line 332
    :catchall_2
    move-exception v1

    .line 333
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 334
    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 335
    .line 336
    .line 337
    :cond_5
    :try_start_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 338
    move-result-object v1

    .line 339
    .line 340
    const-string v2, ""

    .line 341
    .line 342
    if-eqz v1, :cond_7

    .line 343
    .line 344
    new-instance v4, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .line 349
    new-instance v5, Ljava/io/BufferedReader;

    .line 350
    .line 351
    new-instance v6, Ljava/io/InputStreamReader;

    .line 352
    .line 353
    .line 354
    invoke-direct {v6, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 355
    .line 356
    .line 357
    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 358
    .line 359
    .line 360
    :goto_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 361
    move-result-object v6

    .line 362
    .line 363
    if-eqz v6, :cond_6

    .line 364
    .line 365
    .line 366
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    goto :goto_4

    .line 368
    .line 369
    .line 370
    :cond_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 371
    .line 372
    new-instance v5, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 382
    move-result-object v2

    .line 383
    .line 384
    .line 385
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    move-result-object v2

    .line 390
    :cond_7
    monitor-enter p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 391
    .line 392
    :try_start_7
    iget-object v4, p0, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$b$b;->b:Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$d;

    .line 393
    .line 394
    new-instance v5, Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 398
    .line 399
    const-string v6, "mResponseCode="

    .line 400
    .line 401
    .line 402
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 406
    move-result-object v6

    .line 407
    .line 408
    .line 409
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    const-string v6, " errorString="

    .line 412
    .line 413
    .line 414
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 421
    move-result-object v2

    .line 422
    .line 423
    iput-object v2, v4, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$d;->c:Ljava/lang/String;

    .line 424
    .line 425
    iget-object v2, p0, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$b$b;->b:Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$d;

    .line 426
    .line 427
    iput v3, v2, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$d;->b:I

    .line 428
    .line 429
    sget-object v3, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$a;->EHTTP_DOWNLOAD_STATE_HTTP_ERROR:Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$a;

    .line 430
    .line 431
    iput-object v3, v2, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$d;->d:Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$a;

    .line 432
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 433
    move-object v4, v1

    .line 434
    .line 435
    :goto_5
    if-eqz v4, :cond_8

    .line 436
    .line 437
    .line 438
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 439
    goto :goto_6

    .line 440
    :catch_2
    move-exception v1

    .line 441
    .line 442
    .line 443
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    :cond_8
    :goto_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 450
    goto :goto_9

    .line 451
    :catchall_3
    move-exception v2

    .line 452
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 453
    :try_start_a
    throw v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 454
    :catchall_4
    move-exception v2

    .line 455
    move-object v0, v1

    .line 456
    goto :goto_a

    .line 457
    :catch_3
    move-exception v2

    .line 458
    move-object v0, v1

    .line 459
    .line 460
    .line 461
    :goto_7
    :try_start_b
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 465
    monitor-enter p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 466
    .line 467
    :try_start_c
    iget-object v3, p0, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$b$b;->b:Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$d;

    .line 468
    .line 469
    new-instance v4, Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v2}, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->transportException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 473
    .line 474
    const-string v5, "Download Thread Exception:"

    .line 475
    .line 476
    .line 477
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 481
    move-result-object v2

    .line 482
    .line 483
    .line 484
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 488
    move-result-object v2

    .line 489
    .line 490
    iput-object v2, v3, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$d;->c:Ljava/lang/String;

    .line 491
    .line 492
    iget-object v2, p0, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$b$b;->b:Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$d;

    .line 493
    .line 494
    sget-object v3, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$a;->EHTTP_DOWNLOAD_STATE_FAIL:Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$a;

    .line 495
    .line 496
    iput-object v3, v2, Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$d;->d:Lcom/firsttouchgames/ftt/FTTHttpDownloadManager$a;

    .line 497
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 498
    .line 499
    if-eqz v1, :cond_9

    .line 500
    .line 501
    .line 502
    :try_start_d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    .line 503
    goto :goto_8

    .line 504
    :catch_4
    move-exception v1

    .line 505
    .line 506
    .line 507
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 511
    .line 512
    :cond_9
    :goto_8
    if-eqz v0, :cond_a

    .line 513
    goto :goto_6

    .line 514
    :cond_a
    :goto_9
    return-void

    .line 515
    :catchall_5
    move-exception v2

    .line 516
    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 517
    :try_start_f
    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 518
    .line 519
    :goto_a
    if-eqz v1, :cond_b

    .line 520
    .line 521
    .line 522
    :try_start_10
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    .line 523
    goto :goto_b

    .line 524
    :catch_5
    move-exception v1

    .line 525
    .line 526
    .line 527
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 531
    .line 532
    :cond_b
    :goto_b
    if-eqz v0, :cond_c

    .line 533
    .line 534
    .line 535
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 536
    :cond_c
    throw v2

    .line 537
    :catchall_6
    move-exception v0

    .line 538
    :try_start_11
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 539
    throw v0
.end method
