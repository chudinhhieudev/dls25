.class final Lcom/firsttouchgames/dls7/StadiumGeometry25;
.super Ljava/lang/Object;
.source "StadiumGeometry25.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static integer(Ljava/lang/Object;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6
    instance-of v0, p0, Ljava/lang/Integer;

    const-string v1, "Invalid stadium section"

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    :goto_0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p0, v2, v4

    if-ltz p0, :cond_2

    const-wide/16 v4, 0xff

    cmp-long p0, v2, v4

    if-gtz p0, :cond_2

    long-to-int p0, v2

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static migrate(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17
    invoke-static {p0}, Lcom/firsttouchgames/dls7/StadiumGeometry25;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Sta"

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 18
    :goto_0
    const-string v3, "ScM"

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 19
    :goto_1
    nop

    .line 20
    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    if-eqz v0, :cond_4

    move v0, v5

    move v8, v0

    :goto_2
    if-ge v0, v4, :cond_5

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0, v7}, Lorg/json/JSONArray;->optInt(II)I

    move-result v9

    invoke-static {p1, v0, v9}, Lcom/firsttouchgames/dls7/StadiumGeometry25;->valid(Lorg/json/JSONObject;II)Z

    move-result v9

    if-nez v9, :cond_3

    :cond_2
    move v8, v6

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v8, v5

    .line 21
    :cond_5
    const-string v0, "stadium_geometry25_version"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-lt v1, v6, :cond_6

    if-nez v8, :cond_6

    return-object p0

    .line 22
    :cond_6
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/firsttouchgames/dls7/StadiumGeometry25;->profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    .line 23
    if-eqz p0, :cond_c

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 24
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v8, "default_sections"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 25
    nop

    :goto_3
    if-ge v5, v4, :cond_9

    if-nez v2, :cond_7

    invoke-virtual {v8, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    goto :goto_4

    :cond_7
    invoke-virtual {v2, v5, v7}, Lorg/json/JSONArray;->optInt(II)I

    move-result v10

    :goto_4
    invoke-static {p1, v5, v10}, Lcom/firsttouchgames/dls7/StadiumGeometry25;->valid(Lorg/json/JSONObject;II)Z

    move-result v11

    if-eqz v11, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v8, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    :goto_5
    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 26
    :cond_9
    if-nez v2, :cond_a

    move p1, v7

    goto :goto_6

    :cond_a
    invoke-virtual {v2, v4, v7}, Lorg/json/JSONArray;->optInt(II)I

    move-result p1

    :goto_6
    invoke-virtual {v9, p1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    if-nez v2, :cond_b

    goto :goto_7

    :cond_b
    const/16 p1, 0x9

    invoke-virtual {v2, p1, v7}, Lorg/json/JSONArray;->optInt(II)I

    move-result v7

    :goto_7
    invoke-virtual {v9, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    invoke-virtual {p0, v3, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    :cond_c
    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1
.end method

.method private static profile(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    .line 14
    const-string v0, "Prf"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "PrD"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method static valid(Lorg/json/JSONObject;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10
    const-string v0, "models"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 11
    if-ltz p1, :cond_0

    const/16 v0, 0x8

    if-ge p1, v0, :cond_0

    if-eqz p2, :cond_0

    const-string v0, "flags"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_0

    const-string v0, "name"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "section_groups"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "_"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static validateEdit(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    const-string v0, "USui"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/firsttouchgames/dls7/StadiumGeometry25;->integer(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const-string v1, "unique_stadium_count"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Stadium unavailable in DLS25"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 32
    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/firsttouchgames/dls7/StadiumGeometry25;->integer(Ljava/lang/Object;)I

    move-result v1

    const/16 v2, 0x8

    if-lt v0, v2, :cond_2

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    const/16 v2, 0xff

    if-ne v1, v2, :cond_4

    goto :goto_2

    :cond_2
    invoke-static {p1, v0, v1}, Lcom/firsttouchgames/dls7/StadiumGeometry25;->valid(Lorg/json/JSONObject;II)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    :goto_2
    goto :goto_3

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Section incompatible with DLS25 custom stadium"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 32
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 35
    :cond_6
    return-void
.end method
