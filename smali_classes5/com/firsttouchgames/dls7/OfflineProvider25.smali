.class public final Lcom/firsttouchgames/dls7/OfflineProvider25;
.super Landroid/content/ContentProvider;
.source "OfflineProvider25.java"


# static fields
.field private static final PORT:I = 0x6bd

.field private static final SESSION:Ljava/lang/String;

.field private static applicationContext:Landroid/content/Context;

.field private static volatile localReady:Z


# instance fields
.field private catalog:Lorg/json/JSONObject;

.field private directory:Ljava/io/File;

.field private game:Lcom/firsttouchgames/dls7/OfflineGame26;

.field private volatile lastOperation:Ljava/lang/String;

.field private listener:Ljava/net/ServerSocket;

.field private volatile requests:I

.field private rules:Lorg/json/JSONObject;

.field private save:Landroid/util/AtomicFile;

.field private stadiumGeometry:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/firsttouchgames/dls7/OfflineProvider25;->SESSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->lastOperation:Ljava/lang/String;

    return-void
.end method

.method private static adaptMatchPlayers25(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 291
    const-string v0, "PlayerIDs"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Energy"

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 292
    :cond_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 293
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ne v4, v5, :cond_9

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/16 v5, 0x40

    if-gt v4, v5, :cond_9

    .line 294
    const-string v4, "Prf"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v4, "DrT"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v4, "Man"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v4, "LU"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 295
    const/4 v5, 0x0

    move v6, v5

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 296
    :cond_1
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 297
    nop

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 298
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    .line 299
    if-ltz v7, :cond_6

    const v8, 0x927c

    if-gt v7, v8, :cond_6

    .line 300
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 301
    if-eqz v6, :cond_5

    const v7, 0xffff

    if-ne v6, v7, :cond_2

    goto :goto_3

    .line 302
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Foreign DLS25 match player"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 304
    :cond_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-nez v8, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    :goto_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 299
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid DLS25 match energy"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 306
    :cond_7
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 307
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    .line 308
    :cond_8
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    return-void

    .line 293
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid DLS25 energy array length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private adaptProfile25(Lorg/json/JSONObject;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 186
    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineProvider25;->adaptRoster25(Lorg/json/JSONObject;)V

    .line 187
    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineProvider25;->adaptRecoveries25(Lorg/json/JSONObject;)V

    .line 188
    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalModes25;->profile(Lorg/json/JSONObject;)V

    .line 191
    const-string v0, "PrEM"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_1

    .line 193
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 194
    const-string v2, "ScPl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 195
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 196
    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_0
    const-string v2, "ExP"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    const-string v0, "ExM"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    :cond_1
    const-string v0, "TrMP"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 200
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "TrMPI"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 201
    iget-object v4, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->catalog:Lorg/json/JSONObject;

    const-string v5, "players"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 202
    if-eqz v0, :cond_5

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 203
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 204
    const-string v8, "PID"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 205
    if-nez v8, :cond_3

    const/4 v8, 0x0

    goto :goto_2

    :cond_3
    const-string v9, "native_teams"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 206
    :goto_2
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-eqz v9, :cond_4

    .line 207
    const-string v9, "TID"

    invoke-virtual {v8, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v8

    invoke-virtual {v7, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 202
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 206
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "DLS25 market player has no native team"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 209
    :cond_5
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "TmP"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "TrM"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    return-void
.end method

.method private static adaptRecoveries25(Lorg/json/JSONObject;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 216
    const-string v0, "PrPs"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "RcPls"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 217
    if-eqz v0, :cond_c

    if-nez v1, :cond_0

    goto/16 :goto_7

    .line 218
    :cond_0
    const-string v2, "PrPl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const-string v4, "RcPl"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 220
    const-string v6, "DrT"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const-string v6, "Pl"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_2

    return-void

    .line 221
    :cond_2
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v9

    const-string v10, "PID"

    if-ge v8, v9, :cond_3

    invoke-virtual {p0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 222
    :cond_3
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 223
    move v8, v7

    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_8

    .line 224
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v11, "PPt"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 225
    if-eqz v11, :cond_5

    move v12, v7

    move v13, v12

    :goto_3
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v12, v14, :cond_6

    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->getInt(I)I

    move-result v14

    if-nez v14, :cond_4

    const/4 v14, 0x1

    goto :goto_4

    :cond_4
    move v14, v7

    :goto_4
    or-int/2addr v13, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_5
    move v13, v7

    .line 226
    :cond_6
    if-eqz v13, :cond_7

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {p0, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 228
    :cond_8
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 229
    nop

    :goto_5
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v7, v9, :cond_b

    .line 230
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {p0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/json/JSONObject;

    .line 231
    if-eqz v12, :cond_a

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    goto :goto_6

    .line 232
    :cond_9
    new-instance v11, Lorg/json/JSONObject;

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v11, Lorg/json/JSONObject;

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 229
    :cond_a
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 234
    :cond_b
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    return-void

    .line 217
    :cond_c
    :goto_7
    return-void
.end method

.method private adaptRequest25(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 265
    const-string v0, "CAREERENDMATCH"

    invoke-direct {p0, p1, v0}, Lcom/firsttouchgames/dls7/OfflineProvider25;->adaptRequest25(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method private adaptRequest25(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 269
    const-string v0, "Modifications"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 270
    const-string v1, "PMd"

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 271
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/firsttouchgames/dls7/OfflineProtocol26;->decode(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    :cond_0
    const-string v0, "ProfileStateAfter"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ProfileState"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 273
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    :cond_1
    const-string v0, "CAREERENDMATCH"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "Energy"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "HID"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "AID"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->game:Lcom/firsttouchgames/dls7/OfflineGame26;

    invoke-virtual {p2}, Lcom/firsttouchgames/dls7/OfflineGame26;->snapshot()Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/firsttouchgames/dls7/OfflineProvider25;->adaptMatchPlayers25(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 275
    :cond_2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "Prf"

    if-nez p1, :cond_3

    move-object p1, p2

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    :goto_0
    const-string v1, "DrT"

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 276
    :goto_1
    if-eqz p1, :cond_5

    const-string v2, "TrM"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "ExM"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalModes25;->request(Lorg/json/JSONObject;)V

    :cond_5
    if-nez p2, :cond_6

    return-void

    .line 277
    :cond_6
    const-string p1, "Man"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Pl"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    if-nez v2, :cond_7

    return-void

    .line 278
    :cond_7
    iget-object p2, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->game:Lcom/firsttouchgames/dls7/OfflineGame26;

    invoke-virtual {p2}, Lcom/firsttouchgames/dls7/OfflineGame26;->snapshot()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "LU"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 279
    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0xff

    const/4 v3, 0x0

    if-eqz v0, :cond_b

    .line 280
    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 281
    move v6, v3

    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_a

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    if-ne v7, v1, :cond_8

    goto :goto_3

    :cond_8
    if-ltz v7, :cond_9

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {p1, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid DLS25 formation index"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 282
    :cond_a
    invoke-virtual {v2, p2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 284
    :cond_b
    const-string p2, "Ro"

    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_d

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    if-ne v5, v1, :cond_c

    const v5, 0xffff

    goto :goto_5

    :cond_c
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    :goto_5
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_d
    invoke-virtual {v2, p2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 285
    :cond_e
    return-void
.end method

.method private static adaptRoster25(Lorg/json/JSONObject;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 239
    move-object/from16 v0, p0

    const-string v1, "DrT"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "PrPs"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 240
    if-eqz v1, :cond_d

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 241
    :cond_0
    const-string v2, "Man"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_c

    const-string v3, "LU"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_7

    .line 242
    :cond_1
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v5, "PrPl"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 243
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/16 v7, 0x40

    if-gt v6, v7, :cond_b

    .line 244
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 245
    const/4 v8, 0x0

    move v9, v8

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    const-string v11, "PPt"

    const-string v12, "PID"

    if-ge v9, v10, :cond_4

    .line 246
    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 247
    if-eqz v11, :cond_3

    move v13, v8

    :goto_1
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_3

    invoke-virtual {v11, v13}, Lorg/json/JSONArray;->getInt(I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v6, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 245
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 249
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 250
    move v10, v8

    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v10, v13, :cond_6

    .line 251
    invoke-virtual {v4, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/json/JSONObject;

    .line 252
    if-eqz v14, :cond_5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 253
    new-instance v15, Lorg/json/JSONObject;

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 254
    const-string v14, "ScT"

    invoke-virtual {v15, v14, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v14

    const-string v7, "RPC"

    invoke-virtual {v14, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v16, v6

    const v6, 0xffff

    invoke-virtual {v8, v12, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    move-object/from16 v17, v11

    const-string v11, "TID"

    invoke-virtual {v8, v11, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v14, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v8

    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v14, v12, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v14

    invoke-virtual {v14, v11, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v8, "RPl"

    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    invoke-virtual {v5, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 250
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v6, v16

    move-object/from16 v11, v17

    const/16 v7, 0x40

    const/4 v8, 0x0

    goto/16 :goto_2

    .line 252
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DLS25 owned card missing or duplicated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_6
    :goto_3
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/16 v7, 0xff

    const/16 v8, 0x40

    if-ge v6, v8, :cond_7

    invoke-virtual {v9, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_3

    .line 261
    :cond_7
    const-string v6, "Ro"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 262
    const/4 v11, 0x0

    :goto_4
    const/4 v12, 0x5

    if-ge v11, v12, :cond_a

    const/4 v12, -0x1

    if-nez v8, :cond_8

    const/4 v13, 0x0

    invoke-virtual {v4, v13, v12}, Lorg/json/JSONArray;->optInt(II)I

    move-result v12

    goto :goto_5

    :cond_8
    const/4 v13, 0x0

    invoke-virtual {v8, v11, v12}, Lorg/json/JSONArray;->optInt(II)I

    move-result v12

    :goto_5
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    if-nez v12, :cond_9

    move v12, v7

    goto :goto_6

    :cond_9
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :goto_6
    invoke-virtual {v10, v12}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 263
    :cond_a
    const-string v0, "Pl"

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v3, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    return-void

    .line 243
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DLS25 roster capacity exceeded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_c
    :goto_7
    return-void

    .line 240
    :cond_d
    :goto_8
    return-void
.end method

.method private asset(Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Lcom/firsttouchgames/dls7/OfflineProvider25;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "droicer/offline26/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineProvider25;->read(Ljava/io/InputStream;)[B

    move-result-object p1

    return-object p1
.end method

.method private static atomic(Landroid/util/AtomicFile;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    throw p1
.end method

.method public static bundledError(Ljava/lang/String;)I
    .locals 1

    .line 100
    invoke-static {p0}, Lcom/firsttouchgames/dls7/OfflineProvider25;->bundledStatus(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static bundledPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 97
    const-string v0, "InstallTimePack"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->applicationContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/firsttouchgames/dls7/BundledAssetsProvider;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bundledProgress(Ljava/lang/String;)I
    .locals 1

    .line 99
    invoke-static {p0}, Lcom/firsttouchgames/dls7/OfflineProvider25;->bundledStatus(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/16 p0, 0x64

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static bundledRequest(Ljava/lang/String;)I
    .locals 1

    .line 101
    invoke-static {p0}, Lcom/firsttouchgames/dls7/OfflineProvider25;->bundledStatus(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static bundledStatus(Ljava/lang/String;)I
    .locals 1

    .line 98
    const-string v0, "InstallTimePack"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/firsttouchgames/dls7/BundledAssetsProvider;->ready(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x6

    :goto_1
    return p0
.end method

.method private capture(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 48

    .line 327
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "PMd"

    const-string v5, "Modifications"

    const-string v6, "ProfileStateAfter"

    const-string v7, "SyncedMod"

    const-string v8, "ProfileState"

    const-string v9, "PCs"

    const-string v10, "UAg"

    const-string v11, "PeA"

    const-string v12, "PeN"

    const-string v13, "TSV"

    const-string v14, "PID"

    const-string v15, "TID"

    const-string v16, "HID"

    const-string v17, "AID"

    const-string v18, "HSc"

    const-string v19, "ASc"

    const-string v20, "HPe"

    const-string v21, "APe"

    const-string v22, "Fft"

    const-string v23, "PlayerIDs"

    const-string v24, "Apps"

    const-string v25, "Goals"

    const-string v26, "Assists"

    const-string v27, "Energy"

    const-string v28, "type"

    const-string v29, "Lev"

    const-string v30, "Age"

    const-string v31, "NP"

    const-string v32, "SBo"

    const-string v33, "Cr"

    const-string v34, "Gm"

    const-string v35, "Cost"

    const-string v36, "Time"

    const-string v37, "NGa"

    const-string v38, "GmC"

    const-string v39, "Ind"

    const-string v40, "Dai"

    const-string v41, "Pre"

    const-string v42, "Rew"

    const-string v43, "RTy"

    const-string v44, "RLe"

    const-string v45, "Re2"

    const-string v46, "RT2"

    const-string v47, "RL2"

    filled-new-array/range {v4 .. v47}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/16 v7, 0x2c

    if-ge v6, v7, :cond_1

    aget-object v7, v4, v6

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 328
    :cond_1
    const-string v7, "SC0"

    const-string v8, "SC1"

    const-string v9, "SC2"

    const-string v10, "SC3"

    const-string v11, "SC4"

    const-string v12, "SC5"

    const-string v13, "SC6"

    const-string v14, "SC7"

    const-string v15, "SC8"

    const-string v16, "SC9"

    const-string v17, "STCost"

    const-string v18, "USui"

    const-string v19, "PTIndex"

    const-string v20, "PTCost"

    const-string v21, "FCCredits"

    const-string v22, "FCCoins"

    const-string v23, "FCGems"

    const-string v24, "FCLevel"

    const-string v25, "FCIndex"

    const-string v26, "FCFormationGroup"

    const-string v27, "Frm"

    const-string v28, "SHC"

    const-string v29, "SwI"

    const-string v30, "USTIndex"

    const-string v31, "USTCost"

    const-string v32, "USTCredits"

    const-string v33, "USTGems"

    const-string v34, "SAg"

    const-string v35, "SAI"

    const-string v36, "Rer"

    const-string v37, "RPl"

    const-string v38, "SpP"

    const-string v39, "PlLo"

    filled-new-array/range {v7 .. v39}, [Ljava/lang/String;

    move-result-object v4

    move v6, v5

    :goto_1
    const/16 v7, 0x21

    if-ge v6, v7, :cond_3

    aget-object v7, v4, v6

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 329
    :cond_3
    const-string v7, "CoT"

    const-string v8, "ReI"

    const-string v9, "Stats"

    const-string v10, "Cla"

    const-string v11, "CoL"

    const-string v12, "Cos"

    const-string v13, "Bst"

    const-string v14, "Hea"

    const-string v15, "Evs"

    const-string v16, "DMo"

    const-string v17, "Rat"

    const-string v18, "SID"

    const-string v19, "PrU"

    const-string v20, "BoU"

    const-string v21, "LocalPurchase"

    const-string v22, "ClickPurchase"

    const-string v23, "Pr"

    const-string v24, "SPrP"

    filled-new-array/range {v7 .. v24}, [Ljava/lang/String;

    move-result-object v4

    move v6, v5

    :goto_2
    const/16 v7, 0x12

    if-ge v6, v7, :cond_5

    aget-object v7, v4, v6

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 330
    :cond_5
    const-string v4, "DRAFT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v6, "DID"

    const-string v7, "CID"

    const-string v8, "SPI"

    const-string v9, "Pl"

    const-string v10, "LU"

    const-string v11, "Ro"

    const-string v12, "Sta"

    const-string v13, "Frm"

    const-string v14, "Phi"

    const-string v15, "GKS"

    const-string v16, "Cos"

    const-string v17, "HID"

    const-string v18, "AID"

    const-string v19, "HSc"

    const-string v20, "ASc"

    const-string v21, "Fft"

    const-string v22, "EMT"

    filled-new-array/range {v6 .. v22}, [Ljava/lang/String;

    move-result-object v4

    :goto_3
    const/16 v6, 0x11

    if-ge v5, v6, :cond_7

    aget-object v6, v4, v5

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 331
    :cond_7
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    .line 332
    :cond_8
    const-string v5, "SCENARIO"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "Sc"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v8, "ID"

    const-string v9, "Hom"

    const-string v10, "Dif"

    const-string v11, "CPR"

    const-string v12, "OPR"

    const-string v13, "TSD"

    const-string v14, "IHS"

    const-string v15, "IAS"

    const-string v16, "GId"

    const-string v17, "GPo"

    const-string v18, "GDa"

    const-string v19, "AId"

    const-string v20, "APo"

    const-string v21, "ADa"

    filled-new-array/range {v8 .. v21}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_a
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    .line 333
    :cond_b
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "type"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "fields"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "values"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 334
    const-string v3, "SCENARIOENDMATCH"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, v1, Lcom/firsttouchgames/dls7/OfflineProvider25;->game:Lcom/firsttouchgames/dls7/OfflineGame26;

    invoke-virtual {v3}, Lcom/firsttouchgames/dls7/OfflineGame26;->snapshot()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "local_scenarios26"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_c

    const/4 v3, 0x0

    goto :goto_6

    :cond_c
    const-string v4, "active"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    :goto_6
    if-eqz v3, :cond_d

    const-string v4, "scenario_entry_key"

    const-string v5, "entry_key"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_d
    monitor-exit p0

    goto :goto_7

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 335
    :cond_e
    :goto_7
    invoke-static {v2}, Lcom/firsttouchgames/dls7/OfflineProvider25;->redact(Ljava/lang/Object;)V

    new-instance v3, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    iget-object v5, v1, Lcom/firsttouchgames/dls7/OfflineProvider25;->directory:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "last-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ".json"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v3, v0}, Lcom/firsttouchgames/dls7/OfflineProvider25;->atomic(Landroid/util/AtomicFile;[B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 336
    goto :goto_8

    :catch_0
    move-exception v0

    const-string v0, "DroicerOffline25"

    const-string v2, "Private request diagnostic could not be saved"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :goto_8
    return-void
.end method

.method static synthetic lambda$listen$1(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 117
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "DLS25OfflineRequest"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private legacyResponse(Lorg/json/JSONObject;ZLorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 169
    const-string v0, "PrD"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 173
    :goto_0
    const-string v1, "Prf"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 174
    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Lcom/firsttouchgames/dls7/OfflineProvider25;->adaptProfile25(Lorg/json/JSONObject;)V

    invoke-static {v1, p3}, Lcom/firsttouchgames/dls7/LocalModes25;->draftProfile(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 175
    :cond_1
    const-string p3, "TR"

    const-string v1, "UNHANDLED_RESPONSE"

    invoke-virtual {p1, p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "TASK"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p3

    .line 177
    const-string v1, "FRD"

    const-string v2, "MdA"

    const-string v3, "Extra"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x3

    if-ge v2, v3, :cond_3

    aget-object v3, v1, v2

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 178
    :cond_3
    if-eqz p2, :cond_4

    .line 179
    iget-object p1, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->rules:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 180
    new-instance v1, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v1, p2}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {v1, p1}, Ljava/util/zip/DeflaterOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 181
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p2

    const-string v2, "b&z"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v1, "el"

    array-length p1, p1

    invoke-virtual {p2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "Config"

    invoke-virtual {p3, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 180
    :catchall_0
    move-exception p1

    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1

    .line 183
    :cond_4
    :goto_3
    const-string p1, "values"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private static line(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    const/16 v3, 0xa

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    const/16 v2, 0x2000

    if-gt v1, v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "HTTP line too long"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_2

    :cond_4
    const-string p0, "US-ASCII"

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method private listen()V
    .locals 9

    .line 117
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0x10

    invoke-direct {v6, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v7, Lcom/firsttouchgames/dls7/OfflineProvider25$$ExternalSyntheticLambda1;

    invoke-direct {v7}, Lcom/firsttouchgames/dls7/OfflineProvider25$$ExternalSyntheticLambda1;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->listener:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->listener:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v1, Lcom/firsttouchgames/dls7/OfflineProvider25$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/firsttouchgames/dls7/OfflineProvider25$$ExternalSyntheticLambda2;-><init>(Lcom/firsttouchgames/dls7/OfflineProvider25;Ljava/net/Socket;)V

    invoke-virtual {v8, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "DroicerOffline25"

    const-string v1, "Local listener closed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method

.method public static localConnectivity()I
    .locals 1

    .line 96
    sget-boolean v0, Lcom/firsttouchgames/dls7/OfflineProvider25;->localReady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private static native nativeBadgePaths25()Ljava/lang/String;
.end method

.method private static nativeConfig25(Lorg/json/JSONObject;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 109
    new-instance v1, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/zip/DeflaterOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 110
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    .line 111
    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    div-int/2addr v3, v0

    mul-int/2addr v3, v0

    if-ge v2, v3, :cond_0

    aget-byte v3, p0, v2

    rem-int/lit8 v4, v2, 0x4

    aget-byte v4, v1, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0

    .line 109
    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :array_0
    .array-data 1
        -0x1ft
        -0x25t
        -0x7et
        0x45t
    .end array-data
.end method

.method private static native nativeScenario25()Ljava/lang/String;
.end method

.method private static read(Ljava/io/InputStream;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 114
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2000

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    add-int/2addr v3, v2

    const/high16 v4, 0x800000

    if-gt v3, v4, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File limit exceeded"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_3

    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v0
.end method

.method private recoverScenarioResult()V
    .locals 6

    .line 312
    const-string v0, "DroicerOffline25"

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->directory:Ljava/io/File;

    const-string v3, "last-SCENARIOENDMATCH.json"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 313
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v4}, Lcom/firsttouchgames/dls7/OfflineProvider25;->read(Ljava/io/InputStream;)[B

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 314
    iget-object v3, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->game:Lcom/firsttouchgames/dls7/OfflineGame26;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/firsttouchgames/dls7/OfflineGame26;->recoverScenario(Lorg/json/JSONObject;J)Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 315
    :cond_1
    iget-object v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->save:Landroid/util/AtomicFile;

    iget-object v3, v1, Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;->state:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/firsttouchgames/dls7/OfflineProvider25;->atomic(Landroid/util/AtomicFile;[B)V

    iget-object v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->game:Lcom/firsttouchgames/dls7/OfflineGame26;

    invoke-virtual {v2, v1}, Lcom/firsttouchgames/dls7/OfflineGame26;->accept(Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;)V

    .line 316
    const-string v1, "Pending scenario result recovered once and saved locally"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Pending scenario result remains preserved"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 318
    :goto_0
    return-void
.end method

.method private static redact(Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 338
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    check-cast p0, Lorg/json/JSONObject;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v7, "CTS"

    const-string v8, "CnC"

    const-string v2, "Tok"

    const-string v3, "TkS"

    const-string v4, "DeviceToken"

    const-string v5, "UId"

    const-string v6, "LId"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/firsttouchgames/dls7/OfflineProvider25;->redact(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_3

    check-cast p0, Lorg/json/JSONArray;

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/firsttouchgames/dls7/OfflineProvider25;->redact(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private static reply(Ljava/net/Socket;ILorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 340
    const-string v0, "TR"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "TASK"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 341
    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP/1.1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xc8

    if-ne p1, v2, :cond_1

    const-string p1, "OK"

    goto :goto_0

    :cond_1
    const-string p1, "Local Error"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\r\nDate: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\r\nContent-Type: application/json\r\nContent-Length: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length v0, p2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\r\nConnection: close\r\n\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 343
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 344
    return-void
.end method

.method public static route(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 103
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 104
    const-string v3, "https"

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "http"

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "dls7.cf.api.ftpub.net"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dls7.api.ftpub.net"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-eqz v2, :cond_2

    const-string v0, "/DLS_Frontline_"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://127.0.0.1:1725/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/firsttouchgames/dls7/OfflineProvider25;->SESSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 105
    :catch_0
    move-exception v0

    :cond_2
    return-object p0
.end method

.method private serve(Ljava/net/Socket;)V
    .locals 11

    .line 122
    nop

    .line 123
    const/16 v0, 0x3a98

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/firsttouchgames/dls7/OfflineProvider25;->line(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    .line 142
    if-eqz p1, :cond_0

    :try_start_1
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 123
    :cond_0
    return-void

    :cond_1
    :try_start_2
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_23

    .line 124
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, -0x1

    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/firsttouchgames/dls7/OfflineProvider25;->line(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v1, v6

    const/high16 v6, 0x10000

    if-gt v1, v6, :cond_3

    const/16 v6, 0x3a

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v7, "Content-Length"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Headers too long"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_4
    aget-object v1, v2, v5

    const-string v4, "GET"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v4, 0xc8

    const/4 v6, 0x1

    if-eqz v1, :cond_7

    aget-object v1, v2, v6

    const-string v7, "/health"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "service"

    const-string v2, "DLS25-on-device"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ready"

    iget-object v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->game:Lcom/firsttouchgames/dls7/OfflineGame26;

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    move v6, v5

    :goto_1
    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "upstream_forwarding"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "requests"

    iget v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->requests:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "last_operation"

    iget-object v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->lastOperation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v4, v0}, Lcom/firsttouchgames/dls7/OfflineProvider25;->reply(Ljava/net/Socket;ILorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 142
    if-eqz p1, :cond_6

    :try_start_3
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 125
    :cond_6
    return-void

    .line 126
    :cond_7
    :try_start_4
    aget-object v1, v2, v5

    const-string v7, "GET"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    aget-object v1, v2, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/firsttouchgames/dls7/OfflineProvider25;->SESSION:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/state"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->game:Lcom/firsttouchgames/dls7/OfflineGame26;

    invoke-virtual {v0}, Lcom/firsttouchgames/dls7/OfflineGame26;->snapshot()Lorg/json/JSONObject;

    move-result-object v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {v0}, Lcom/firsttouchgames/dls7/OfflineProvider25;->redact(Ljava/lang/Object;)V

    invoke-static {p1, v4, v0}, Lcom/firsttouchgames/dls7/OfflineProvider25;->reply(Ljava/net/Socket;ILorg/json/JSONObject;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 142
    if-eqz p1, :cond_8

    :try_start_7
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 126
    :cond_8
    return-void

    :catchall_0
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v0

    .line 127
    :cond_9
    aget-object v1, v2, v5

    const-string v7, "GET"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    aget-object v1, v2, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/firsttouchgames/dls7/OfflineProvider25;->SESSION:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/badges"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v0, "badgesprobe25"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lcom/firsttouchgames/dls7/OfflineProvider25;->nativeBadgePaths25()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v4, v0}, Lcom/firsttouchgames/dls7/OfflineProvider25;->reply(Ljava/net/Socket;ILorg/json/JSONObject;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 142
    if-eqz p1, :cond_a

    :try_start_a
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 127
    :cond_a
    return-void

    .line 128
    :cond_b
    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v7, Lcom/firsttouchgames/dls7/OfflineProvider25;->SESSION:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "/last/"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    aget-object v7, v2, v5

    const-string v8, "GET"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/16 v8, 0x194

    if-eqz v7, :cond_10

    aget-object v7, v2, v6

    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    aget-object v0, v2, v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[A-Z0-9_]{1,80}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->directory:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "last-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".json"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_2

    :cond_c
    move v4, v8

    :goto_2
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v3}, Lcom/firsttouchgames/dls7/OfflineProvider25;->read(Ljava/io/InputStream;)[B

    move-result-object v1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_3
    invoke-static {p1, v4, v0}, Lcom/firsttouchgames/dls7/OfflineProvider25;->reply(Ljava/net/Socket;ILorg/json/JSONObject;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 142
    if-eqz p1, :cond_e

    :try_start_c
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    .line 129
    :cond_e
    return-void

    :cond_f
    :try_start_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid diagnostic operation"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_10
    aget-object v1, v2, v5

    const-string v7, "POST"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    aget-object v1, v2, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Lcom/firsttouchgames/dls7/OfflineProvider25;->SESSION:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "/resources"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    move v1, v6

    goto :goto_4

    :cond_11
    move v1, v5

    .line 131
    :goto_4
    aget-object v7, v2, v5

    const-string v9, "POST"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    aget-object v7, v2, v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/firsttouchgames/dls7/OfflineProvider25;->SESSION:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/player"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    move v7, v6

    goto :goto_5

    :cond_12
    move v7, v5

    .line 132
    :goto_5
    aget-object v9, v2, v5

    const-string v10, "POST"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21

    aget-object v2, v2, v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/firsttouchgames/dls7/OfflineProvider25;->SESSION:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    if-nez v1, :cond_13

    if-nez v7, :cond_13

    goto/16 :goto_b

    .line 133
    :cond_13
    if-ltz v3, :cond_20

    const/high16 v2, 0x800000

    if-gt v3, v2, :cond_20

    new-array v2, v3, [B

    :goto_6
    if-ge v5, v3, :cond_15

    sub-int v8, v3, v5

    invoke-virtual {v0, v2, v5, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    if-ltz v8, :cond_14

    add-int/2addr v5, v8

    goto :goto_6

    :cond_14
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    :goto_7
    throw v0

    .line 134
    :cond_15
    if-eqz v1, :cond_1a

    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "coins"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "gems"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v1, Ljava/lang/Integer;

    if-nez v2, :cond_16

    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_17

    :cond_16
    instance-of v2, v0, Ljava/lang/Integer;

    if-nez v2, :cond_18

    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_17

    goto :goto_8

    :cond_17
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Test resources require whole numbers"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    :goto_8
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/firsttouchgames/dls7/OfflineProvider25;->testResources(JJ)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v4, v0}, Lcom/firsttouchgames/dls7/OfflineProvider25;->reply(Ljava/net/Socket;ILorg/json/JSONObject;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 142
    if-eqz p1, :cond_19

    :try_start_e
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    .line 134
    :cond_19
    return-void

    .line 135
    :cond_1a
    if-eqz v7, :cond_1d

    :try_start_f
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "player_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1c

    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_1c

    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0xffff

    if-ge v1, v2, :cond_1c

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/firsttouchgames/dls7/OfflineProvider25;->testPlayer(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v4, v0}, Lcom/firsttouchgames/dls7/OfflineProvider25;->reply(Ljava/net/Socket;ILorg/json/JSONObject;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 142
    if-eqz p1, :cond_1b

    :try_start_10
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    .line 135
    :cond_1b
    return-void

    :cond_1c
    :try_start_11
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid test player"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1d
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/firsttouchgames/dls7/OfflineProtocol26;->decode(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[A-Z0-9_]{1,80}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string v2, "values"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1e

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 137
    :cond_1e
    invoke-direct {p0, v1, v0}, Lcom/firsttouchgames/dls7/OfflineProvider25;->capture(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->requests:I

    add-int/2addr v2, v6

    iput v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->requests:I

    iput-object v1, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->lastOperation:Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 138
    const/4 v2, 0x0

    :try_start_12
    invoke-direct {p0, v1, v0}, Lcom/firsttouchgames/dls7/OfflineProvider25;->transaction(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v4, v0}, Lcom/firsttouchgames/dls7/OfflineProvider25;->reply(Ljava/net/Socket;ILorg/json/JSONObject;)V

    const-string v0, "DroicerOffline25"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " -> 200 (saved locally)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 141
    :goto_9
    goto/16 :goto_a

    :catch_0
    move-exception v0

    :try_start_13
    invoke-static {v0}, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->serverException(Ljava/lang/Throwable;)V

    const/16 v3, 0x199

    invoke-static {v1, v3, v2}, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->recordOperation(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "TR"

    const-string v5, "UNHANDLED_RESPONSE"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {p1, v3, v2}, Lcom/firsttouchgames/dls7/OfflineProvider25;->reply(Ljava/net/Socket;ILorg/json/JSONObject;)V

    const-string v2, "DroicerOffline25"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " rejected; local profile preserved"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 140
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->serverException(Ljava/lang/Throwable;)V

    const/16 v3, 0x1f5

    invoke-static {v1, v3, v2}, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->recordOperation(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "TR"

    const-string v5, "UNHANDLED_RESPONSE"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {p1, v3, v2}, Lcom/firsttouchgames/dls7/OfflineProvider25;->reply(Ljava/net/Socket;ILorg/json/JSONObject;)V

    const-string v2, "DroicerOffline25"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 139
    :catch_2
    move-exception v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "TR"

    iget-object v5, v0, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;->result:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {p1, v4, v2}, Lcom/firsttouchgames/dls7/OfflineProvider25;->reply(Ljava/net/Socket;ILorg/json/JSONObject;)V

    const-string v2, "DroicerOffline25"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " -> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;->result:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (profile preserved)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto/16 :goto_9

    .line 142
    :goto_a
    if-eqz p1, :cond_25

    :try_start_14
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3

    goto :goto_d

    .line 136
    :cond_1f
    :try_start_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid operation"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_20
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid request size"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 132
    :cond_21
    :goto_b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1, v8, v0}, Lcom/firsttouchgames/dls7/OfflineProvider25;->reply(Ljava/net/Socket;ILorg/json/JSONObject;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 142
    if-eqz p1, :cond_22

    :try_start_16
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_3

    .line 132
    :cond_22
    return-void

    .line 123
    :cond_23
    :try_start_17
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid HTTP request"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 122
    :catchall_1
    move-exception v0

    if-eqz p1, :cond_24

    :try_start_18
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    goto :goto_c

    :catchall_2
    move-exception p1

    :try_start_19
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_24
    :goto_c
    throw v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_3

    .line 142
    :catch_3
    move-exception p1

    const-string v0, "DroicerOffline25"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Local HTTP request failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_25
    :goto_d
    return-void
.end method

.method private declared-synchronized testPlayer(I)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->game:Lcom/firsttouchgames/dls7/OfflineGame26;

    invoke-virtual {v0, p1}, Lcom/firsttouchgames/dls7/OfflineGame26;->testPlayer(I)Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;

    move-result-object p1

    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->save:Landroid/util/AtomicFile;

    iget-object v1, p1, Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;->state:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/firsttouchgames/dls7/OfflineProvider25;->atomic(Landroid/util/AtomicFile;[B)V

    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->game:Lcom/firsttouchgames/dls7/OfflineGame26;

    invoke-virtual {v0, p1}, Lcom/firsttouchgames/dls7/OfflineGame26;->accept(Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;)V

    const-string v0, "DroicerOffline25"

    const-string v1, "Authorized test player saved locally"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;->response:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 323
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized testResources(JJ)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->game:Lcom/firsttouchgames/dls7/OfflineGame26;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/firsttouchgames/dls7/OfflineGame26;->testResources(JJ)Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;

    move-result-object p1

    iget-object p2, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->save:Landroid/util/AtomicFile;

    iget-object p3, p1, Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;->state:Lorg/json/JSONObject;

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    sget-object p4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    invoke-static {p2, p3}, Lcom/firsttouchgames/dls7/OfflineProvider25;->atomic(Landroid/util/AtomicFile;[B)V

    iget-object p2, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->game:Lcom/firsttouchgames/dls7/OfflineGame26;

    invoke-virtual {p2, p1}, Lcom/firsttouchgames/dls7/OfflineGame26;->accept(Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;)V

    const-string p2, "DroicerOffline25"

    const-string p3, "Authorized test resources saved locally"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;->response:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 320
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized transaction(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 145
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v7, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v7, p1}, Lcom/firsttouchgames/dls7/OfflineProvider25;->adaptRequest25(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 146
    const-string p2, "SCENARIOENTERMATCH"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz p2, :cond_1

    const-string p2, "ID"

    invoke-virtual {v7, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const-string p2, "ScV"

    invoke-virtual {v7, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 147
    const-string p2, "badgesprobe25"

    invoke-static {p2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance p2, Lorg/json/JSONObject;

    invoke-static {}, Lcom/firsttouchgames/dls7/OfflineProvider25;->nativeScenario25()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 148
    const-string v1, "ScV"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v9, :cond_0

    const-string v1, "ScID"

    invoke-virtual {p2, v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 149
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 148
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Native generated scenario is not ready"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 151
    :cond_1
    iget-object p2, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->rules:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->game:Lcom/firsttouchgames/dls7/OfflineGame26;

    invoke-virtual {v0}, Lcom/firsttouchgames/dls7/OfflineGame26;->snapshot()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v7, p2, v0}, Lcom/firsttouchgames/dls7/LocalModes25;->scenarioRequest(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 152
    const-string p2, "STADIUMEDIT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->stadiumGeometry:Lorg/json/JSONObject;

    invoke-static {v7, p2}, Lcom/firsttouchgames/dls7/StadiumGeometry25;->validateEdit(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 155
    :cond_2
    const-string p2, "PRIZELADDER_COLLECTPRIZE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 156
    iget-object p2, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->game:Lcom/firsttouchgames/dls7/OfflineGame26;

    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalDraft25;->handles(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "PRIZELADDER_STARTLADDER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, p1

    goto :goto_2

    :cond_4
    :goto_1
    const-string v0, "FLUSHMODS"

    :goto_2
    invoke-virtual {p2, v0, v7}, Lcom/firsttouchgames/dls7/OfflineGame26;->prepare(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;

    move-result-object p2

    .line 157
    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->game:Lcom/firsttouchgames/dls7/OfflineGame26;

    invoke-virtual {v0}, Lcom/firsttouchgames/dls7/OfflineGame26;->passConfiguration25()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->rules:Lorg/json/JSONObject;

    const-string v2, "Common"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "SeasonPass"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    move v10, v9

    goto :goto_3

    :cond_5
    move v10, v8

    :goto_3
    iget-object v1, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->rules:Lorg/json/JSONObject;

    const-string v2, "Common"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "SeasonPass"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalDraft25;->handles(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 159
    iget-object v1, p2, Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;->state:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->rules:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->catalog:Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v11, 0x3e8

    div-long/2addr v5, v11

    move-object v0, p1

    move-object v2, v7

    invoke-static/range {v0 .. v6}, Lcom/firsttouchgames/dls7/LocalDraft25;->apply(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;J)Lorg/json/JSONObject;

    move-result-object v0

    .line 160
    iget-object v1, p2, Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;->response:Lorg/json/JSONObject;

    const-string v2, "PrD"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Prf"

    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p2, Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;->state:Lorg/json/JSONObject;

    const-string v5, "Prf"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    iget-object v1, p2, Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;->response:Lorg/json/JSONObject;

    const-string v2, "Extra"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 163
    :cond_6
    const-string v0, "SCENARIOENDMATCH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->rules:Lorg/json/JSONObject;

    iget-object v1, p2, Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;->response:Lorg/json/JSONObject;

    const-string v2, "Extra"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p1, v7, v0, v1}, Lcom/firsttouchgames/dls7/LocalModes25;->result(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 165
    :cond_7
    iget-object v0, p2, Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;->response:Lorg/json/JSONObject;

    if-nez v10, :cond_8

    const-string v1, "NEWUSER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "SIGNIN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "SEASONPASS_ENDSEASON"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    move v8, v9

    :cond_9
    iget-object p1, p2, Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;->state:Lorg/json/JSONObject;

    invoke-direct {p0, v0, v8, p1}, Lcom/firsttouchgames/dls7/OfflineProvider25;->legacyResponse(Lorg/json/JSONObject;ZLorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 166
    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->save:Landroid/util/AtomicFile;

    iget-object v1, p2, Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;->state:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/firsttouchgames/dls7/OfflineProvider25;->atomic(Landroid/util/AtomicFile;[B)V

    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->game:Lcom/firsttouchgames/dls7/OfflineGame26;

    invoke-virtual {v0, p2}, Lcom/firsttouchgames/dls7/OfflineGame26;->accept(Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 155
    :cond_a
    :try_start_1
    new-instance p1, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;

    const-string p2, "PRIZELADDER_NOTACTIVE"

    invoke-direct {p1, p2}, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 348
    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 346
    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 347
    const/4 p1, 0x0

    return-object p1
.end method

.method synthetic lambda$listen$2$com-firsttouchgames-dls7-OfflineProvider25(Ljava/net/Socket;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lcom/firsttouchgames/dls7/OfflineProvider25;->serve(Ljava/net/Socket;)V

    return-void
.end method

.method synthetic lambda$onCreate$0$com-firsttouchgames-dls7-OfflineProvider25()V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/firsttouchgames/dls7/OfflineProvider25;->listen()V

    return-void
.end method

.method public onCreate()Z
    .locals 11

    .line 34
    const-string v0, "dlsconfig.dat"

    const-string v1, "DroicerOffline25"

    invoke-virtual {p0}, Lcom/firsttouchgames/dls7/OfflineProvider25;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.firsttouchgames.dr25"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/firsttouchgames/dls7/OfflineProvider25;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/firsttouchgames/dls7/OfflineProvider25;->applicationContext:Landroid/content/Context;

    .line 37
    :try_start_0
    sget-object v2, Lcom/firsttouchgames/dls7/OfflineProvider25;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->initialize(Landroid/content/Context;)V

    .line 38
    const-string v2, "players.dat"

    const-string v4, "teams.dat"

    const-string v5, "teamplayerlinks.dat"

    filled-new-array {v2, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    move v4, v3

    :goto_0
    const/4 v5, 0x3

    if-ge v4, v5, :cond_4

    aget-object v5, v2, v4

    .line 39
    new-instance v6, Ljava/io/File;

    invoke-virtual {p0}, Lcom/firsttouchgames/dls7/OfflineProvider25;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/firsttouchgames/dls7/OfflineProvider25;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "droicer/test-catalog26/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Lcom/firsttouchgames/dls7/OfflineProvider25;->read(Ljava/io/InputStream;)[B

    move-result-object v7

    .line 41
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v8}, Lcom/firsttouchgames/dls7/OfflineProvider25;->read(Ljava/io/InputStream;)[B

    move-result-object v8

    invoke-static {v8, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-nez v8, :cond_3

    .line 42
    :cond_1
    new-instance v8, Ljava/io/File;

    invoke-virtual {p0}, Lcom/firsttouchgames/dls7/OfflineProvider25;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ".before-droicer25"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v9, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Landroid/util/AtomicFile;

    invoke-direct {v5, v8}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v8}, Lcom/firsttouchgames/dls7/OfflineProvider25;->read(Ljava/io/InputStream;)[B

    move-result-object v8

    invoke-static {v5, v8}, Lcom/firsttouchgames/dls7/OfflineProvider25;->atomic(Landroid/util/AtomicFile;[B)V

    .line 44
    :cond_2
    new-instance v5, Landroid/util/AtomicFile;

    invoke-direct {v5, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-static {v5, v7}, Lcom/firsttouchgames/dls7/OfflineProvider25;->atomic(Landroid/util/AtomicFile;[B)V

    .line 38
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 47
    :cond_4
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/firsttouchgames/dls7/OfflineProvider25;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "droicer/offline26"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->directory:Ljava/io/File;

    iget-object v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->directory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->directory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Cannot create local save directory"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_6
    :goto_1
    invoke-direct {p0, v0}, Lcom/firsttouchgames/dls7/OfflineProvider25;->asset(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/firsttouchgames/dls7/OfflineProvider25;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/firsttouchgames/dls7/OfflineProvider25;->read(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-static {v0, v2}, Lcom/firsttouchgames/dls7/OfflineProvider25;->atomic(Landroid/util/AtomicFile;[B)V

    .line 51
    :cond_8
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->directory:Ljava/io/File;

    const-string v6, "profile.json"

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->save:Landroid/util/AtomicFile;

    .line 52
    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->save:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    iget-object v5, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->save:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v5

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 53
    :cond_9
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->directory:Ljava/io/File;

    const-string v5, "profile-seed.json"

    invoke-direct {v0, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Lorg/json/JSONObject;

    new-instance v5, Ljava/lang/String;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v6}, Lcom/firsttouchgames/dls7/OfflineProvider25;->read(Ljava/io/InputStream;)[B

    move-result-object v0

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v0, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_2

    :cond_a
    new-instance v0, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    const-string v5, "profile-template26.json"

    invoke-direct {p0, v5}, Lcom/firsttouchgames/dls7/OfflineProvider25;->asset(Ljava/lang/String;)[B

    move-result-object v5

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 54
    :goto_2
    new-instance v2, Lorg/json/JSONObject;

    new-instance v5, Ljava/lang/String;

    const-string v6, "config26.json"

    invoke-direct {p0, v6}, Lcom/firsttouchgames/dls7/OfflineProvider25;->asset(Ljava/lang/String;)[B

    move-result-object v6

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->rules:Lorg/json/JSONObject;

    .line 55
    new-instance v2, Lorg/json/JSONObject;

    new-instance v5, Ljava/lang/String;

    const-string v6, "catalog26.json"

    invoke-direct {p0, v6}, Lcom/firsttouchgames/dls7/OfflineProvider25;->asset(Ljava/lang/String;)[B

    move-result-object v6

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->catalog:Lorg/json/JSONObject;

    .line 56
    iget-object v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->catalog:Lorg/json/JSONObject;

    invoke-static {v0, v2}, Lcom/firsttouchgames/dls7/LocalCatalog25;->needs(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 57
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->directory:Ljava/io/File;

    const-string v6, "profile-before-app25-db.json"

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_b

    new-instance v5, Landroid/util/AtomicFile;

    invoke-direct {v5, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-static {v5, v2}, Lcom/firsttouchgames/dls7/OfflineProvider25;->atomic(Landroid/util/AtomicFile;[B)V

    .line 59
    :cond_b
    iget-object v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->catalog:Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/String;

    const-string v7, "catalog25-migration.json"

    invoke-direct {p0, v7}, Lcom/firsttouchgames/dls7/OfflineProvider25;->asset(Ljava/lang/String;)[B

    move-result-object v7

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v5}, Lcom/firsttouchgames/dls7/LocalCatalog25;->migrate(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 61
    :cond_c
    iget-object v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->rules:Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v2, v5, v6}, Lcom/firsttouchgames/dls7/LocalModes25;->configure(Lorg/json/JSONObject;J)V

    .line 62
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iget-object v5, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->rules:Lorg/json/JSONObject;

    invoke-static {v5}, Lcom/firsttouchgames/dls7/OfflineProvider25;->nativeConfig25(Lorg/json/JSONObject;)[B

    move-result-object v5

    invoke-static {v2, v5}, Lcom/firsttouchgames/dls7/OfflineProvider25;->atomic(Landroid/util/AtomicFile;[B)V

    .line 63
    new-instance v2, Lorg/json/JSONObject;

    new-instance v5, Ljava/lang/String;

    const-string v6, "team-catalog25.json"

    invoke-direct {p0, v6}, Lcom/firsttouchgames/dls7/OfflineProvider25;->asset(Ljava/lang/String;)[B

    move-result-object v6

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-static {v0, v2}, Lcom/firsttouchgames/dls7/TeamsCatalog25;->migrate(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 65
    if-eq v2, v0, :cond_e

    .line 66
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->directory:Ljava/io/File;

    const-string v6, "profile-before-team-catalog25.json"

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    iget-object v5, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->save:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_d

    new-instance v5, Landroid/util/AtomicFile;

    invoke-direct {v5, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->save:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v0

    invoke-static {v5, v0}, Lcom/firsttouchgames/dls7/OfflineProvider25;->atomic(Landroid/util/AtomicFile;[B)V

    .line 68
    :cond_d
    move-object v0, v2

    .line 70
    :cond_e
    new-instance v2, Lorg/json/JSONObject;

    new-instance v5, Ljava/lang/String;

    const-string v6, "stadium-geometry25.json"

    invoke-direct {p0, v6}, Lcom/firsttouchgames/dls7/OfflineProvider25;->asset(Ljava/lang/String;)[B

    move-result-object v6

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->stadiumGeometry:Lorg/json/JSONObject;

    .line 71
    iget-object v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->stadiumGeometry:Lorg/json/JSONObject;

    invoke-static {v0, v2}, Lcom/firsttouchgames/dls7/StadiumGeometry25;->migrate(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 72
    if-eq v2, v0, :cond_10

    .line 73
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->directory:Ljava/io/File;

    const-string v6, "profile-before-stadium25.json"

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    iget-object v5, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->save:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_f

    new-instance v5, Landroid/util/AtomicFile;

    invoke-direct {v5, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->save:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v0

    invoke-static {v5, v0}, Lcom/firsttouchgames/dls7/OfflineProvider25;->atomic(Landroid/util/AtomicFile;[B)V

    .line 75
    :cond_f
    move-object v0, v2

    .line 77
    :cond_10
    new-instance v2, Lcom/firsttouchgames/dls7/OfflineGame26;

    iget-object v5, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->rules:Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->catalog:Lorg/json/JSONObject;

    invoke-direct {v2, v5, v6, v0}, Lcom/firsttouchgames/dls7/OfflineGame26;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->game:Lcom/firsttouchgames/dls7/OfflineGame26;

    .line 78
    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->rules:Lorg/json/JSONObject;

    const-string v2, "Common"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "SeasonPass"

    iget-object v5, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->game:Lcom/firsttouchgames/dls7/OfflineGame26;

    invoke-virtual {v5}, Lcom/firsttouchgames/dls7/OfflineGame26;->passConfiguration25()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iget-object v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->rules:Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/firsttouchgames/dls7/OfflineProvider25;->nativeConfig25(Lorg/json/JSONObject;)[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/firsttouchgames/dls7/OfflineProvider25;->atomic(Landroid/util/AtomicFile;[B)V

    .line 79
    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->game:Lcom/firsttouchgames/dls7/OfflineGame26;

    invoke-virtual {v0}, Lcom/firsttouchgames/dls7/OfflineGame26;->snapshot()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->catalog:Lorg/json/JSONObject;

    invoke-static {v0, v2}, Lcom/firsttouchgames/dls7/CustomDroicer25;->ensureCaptain(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_11

    iget-object v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->game:Lcom/firsttouchgames/dls7/OfflineGame26;

    new-instance v4, Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v4, v0, v5}, Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-virtual {v2, v4}, Lcom/firsttouchgames/dls7/OfflineGame26;->accept(Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;)V

    .line 84
    :cond_11
    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->game:Lcom/firsttouchgames/dls7/OfflineGame26;

    invoke-virtual {v0}, Lcom/firsttouchgames/dls7/OfflineGame26;->snapshot()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->rules:Lorg/json/JSONObject;

    invoke-static {v0, v2}, Lcom/firsttouchgames/dls7/LocalModes25;->initialize(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v2

    iget-object v4, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->catalog:Lorg/json/JSONObject;

    invoke-static {v0, v4}, Lcom/firsttouchgames/dls7/LocalCatalog25;->mark(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v4

    or-int/2addr v2, v4

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->game:Lcom/firsttouchgames/dls7/OfflineGame26;

    new-instance v4, Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v4, v0, v5}, Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-virtual {v2, v4}, Lcom/firsttouchgames/dls7/OfflineGame26;->accept(Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;)V

    .line 85
    :cond_12
    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->save:Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->game:Lcom/firsttouchgames/dls7/OfflineGame26;

    invoke-virtual {v2}, Lcom/firsttouchgames/dls7/OfflineGame26;->snapshot()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/firsttouchgames/dls7/OfflineProvider25;->atomic(Landroid/util/AtomicFile;[B)V

    .line 86
    invoke-direct {p0}, Lcom/firsttouchgames/dls7/OfflineProvider25;->recoverScenarioResult()V

    .line 87
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    iput-object v0, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->listener:Ljava/net/ServerSocket;

    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineProvider25;->listener:Ljava/net/ServerSocket;

    new-instance v2, Ljava/net/InetSocketAddress;

    const-string v4, "127.0.0.1"

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const/16 v5, 0x6bd

    invoke-direct {v2, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/16 v4, 0x8

    invoke-virtual {v0, v2, v4}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    .line 88
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/firsttouchgames/dls7/OfflineProvider25$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/firsttouchgames/dls7/OfflineProvider25$$ExternalSyntheticLambda0;-><init>(Lcom/firsttouchgames/dls7/OfflineProvider25;)V

    const-string v4, "DLS25OfflineListener"

    invoke-direct {v0, v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 91
    const-string v0, "DroicerOffline25Capability"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "capability="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/firsttouchgames/dls7/OfflineProvider25;->SESSION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sput-boolean v2, Lcom/firsttouchgames/dls7/OfflineProvider25;->localReady:Z

    .line 93
    const-string v0, "Local profile service ready; original Frontline requests stay on this device"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 94
    :catch_0
    move-exception v0

    const-string v2, "Local profile startup failed; upstream forwarding remains disabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v0}, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->startupFailure(Ljava/lang/Throwable;)V

    return v3
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 345
    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 349
    const/4 p1, 0x0

    return p1
.end method
