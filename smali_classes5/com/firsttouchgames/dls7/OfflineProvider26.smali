.class public final Lcom/firsttouchgames/dls7/OfflineProvider26;
.super Landroid/content/ContentProvider;
.source "OfflineProvider26.java"


# static fields
.field private static final PORT:I = 0x6be

.field private static final SESSION:Ljava/lang/String;


# instance fields
.field private directory:Ljava/io/File;

.field private game:Lcom/firsttouchgames/dls7/OfflineGame26;

.field private volatile lastOperation:Ljava/lang/String;

.field private listener:Ljava/net/ServerSocket;

.field private volatile requests:I

.field private save:Landroid/util/AtomicFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/firsttouchgames/dls7/OfflineProvider26;->SESSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/firsttouchgames/dls7/OfflineProvider26;->lastOperation:Ljava/lang/String;

    return-void
.end method

.method private asset(Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lcom/firsttouchgames/dls7/OfflineProvider26;->getContext()Landroid/content/Context;

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

    invoke-static {p1}, Lcom/firsttouchgames/dls7/OfflineProvider26;->read(Ljava/io/InputStream;)[B

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

    .line 54
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

.method private capture(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 46

    .line 104
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "PMd"

    const-string v5, "SyncedMod"

    const-string v6, "ProfileState"

    const-string v7, "PCs"

    const-string v8, "UAg"

    const-string v9, "PeA"

    const-string v10, "PeN"

    const-string v11, "TSV"

    const-string v12, "PID"

    const-string v13, "TID"

    const-string v14, "HID"

    const-string v15, "AID"

    const-string v16, "HSc"

    const-string v17, "ASc"

    const-string v18, "HPe"

    const-string v19, "APe"

    const-string v20, "Fft"

    const-string v21, "PlayerIDs"

    const-string v22, "Apps"

    const-string v23, "Goals"

    const-string v24, "Assists"

    const-string v25, "Energy"

    const-string v26, "type"

    const-string v27, "Lev"

    const-string v28, "Age"

    const-string v29, "NP"

    const-string v30, "SBo"

    const-string v31, "Cr"

    const-string v32, "Gm"

    const-string v33, "Cost"

    const-string v34, "Time"

    const-string v35, "NGa"

    const-string v36, "GmC"

    const-string v37, "Ind"

    const-string v38, "Dai"

    const-string v39, "Pre"

    const-string v40, "Rew"

    const-string v41, "RTy"

    const-string v42, "RLe"

    const-string v43, "Re2"

    const-string v44, "RT2"

    const-string v45, "RL2"

    filled-new-array/range {v4 .. v45}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/16 v7, 0x2a

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

    .line 105
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

    .line 106
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

    filled-new-array/range {v7 .. v22}, [Ljava/lang/String;

    move-result-object v4

    :goto_2
    const/16 v6, 0x10

    if-ge v5, v6, :cond_5

    aget-object v6, v4, v5

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 107
    :cond_5
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 108
    :cond_6
    const-string v5, "SCENARIO"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "Sc"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

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

    if-eqz v7, :cond_7

    :cond_8
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 109
    :cond_9
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

    .line 110
    const-string v3, "SCENARIOENDMATCH"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, v1, Lcom/firsttouchgames/dls7/OfflineProvider26;->game:Lcom/firsttouchgames/dls7/OfflineGame26;

    invoke-virtual {v3}, Lcom/firsttouchgames/dls7/OfflineGame26;->snapshot()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "local_scenarios26"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_a

    const/4 v3, 0x0

    goto :goto_5

    :cond_a
    const-string v4, "active"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    :goto_5
    if-eqz v3, :cond_b

    const-string v4, "scenario_entry_key"

    const-string v5, "entry_key"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b
    monitor-exit p0

    goto :goto_6

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 111
    :cond_c
    :goto_6
    invoke-static {v2}, Lcom/firsttouchgames/dls7/OfflineProvider26;->redact(Ljava/lang/Object;)V

    new-instance v3, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    iget-object v5, v1, Lcom/firsttouchgames/dls7/OfflineProvider26;->directory:Ljava/io/File;

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

    invoke-static {v3, v0}, Lcom/firsttouchgames/dls7/OfflineProvider26;->atomic(Landroid/util/AtomicFile;[B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 112
    goto :goto_7

    :catch_0
    move-exception v0

    const-string v0, "DroicerOffline26"

    const-string v2, "Private request diagnostic could not be saved"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_7
    return-void
.end method

.method static synthetic lambda$listen$1(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "DLS26OfflineRequest"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private static line(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 59
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

    .line 56
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0x10

    invoke-direct {v6, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v7, Lcom/firsttouchgames/dls7/OfflineProvider26$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/firsttouchgames/dls7/OfflineProvider26$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 57
    :goto_0
    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineProvider26;->listener:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineProvider26;->listener:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v1, Lcom/firsttouchgames/dls7/OfflineProvider26$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/firsttouchgames/dls7/OfflineProvider26$$ExternalSyntheticLambda1;-><init>(Lcom/firsttouchgames/dls7/OfflineProvider26;Ljava/net/Socket;)V

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

    const-string v0, "DroicerOffline26"

    const-string v1, "Local listener closed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method

.method private static read(Ljava/io/InputStream;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
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

    .line 89
    const-string v0, "DroicerOffline26"

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider26;->directory:Ljava/io/File;

    const-string v3, "last-SCENARIOENDMATCH.json"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 90
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v4}, Lcom/firsttouchgames/dls7/OfflineProvider26;->read(Ljava/io/InputStream;)[B

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 91
    iget-object v3, p0, Lcom/firsttouchgames/dls7/OfflineProvider26;->game:Lcom/firsttouchgames/dls7/OfflineGame26;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/firsttouchgames/dls7/OfflineGame26;->recoverScenario(Lorg/json/JSONObject;J)Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 92
    :cond_1
    iget-object v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider26;->save:Landroid/util/AtomicFile;

    iget-object v3, v1, Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;->state:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/firsttouchgames/dls7/OfflineProvider26;->atomic(Landroid/util/AtomicFile;[B)V

    iget-object v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider26;->game:Lcom/firsttouchgames/dls7/OfflineGame26;

    invoke-virtual {v2, v1}, Lcom/firsttouchgames/dls7/OfflineGame26;->accept(Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;)V

    .line 93
    const-string v1, "Pending scenario result recovered once and saved locally"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Pending scenario result remains preserved"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
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

    .line 114
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

    invoke-static {v1}, Lcom/firsttouchgames/dls7/OfflineProvider26;->redact(Ljava/lang/Object;)V

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

    invoke-static {v1}, Lcom/firsttouchgames/dls7/OfflineProvider26;->redact(Ljava/lang/Object;)V

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

    .line 116
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

    .line 117
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

    if-ne p1, v2, :cond_0

    const-string p1, "OK"

    goto :goto_0

    :cond_0
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

    .line 118
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 119
    return-void
.end method

.method public static route(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 48
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 49
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

    const-string v1, "http://127.0.0.1:1726/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/firsttouchgames/dls7/OfflineProvider26;->SESSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 50
    :catch_0
    move-exception v0

    :cond_2
    return-object p0
.end method

.method private serve(Ljava/net/Socket;)V
    .locals 11

    .line 61
    nop

    .line 62
    const/16 v0, 0x3a98

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/firsttouchgames/dls7/OfflineProvider26;->line(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    .line 80
    if-eqz p1, :cond_0

    :try_start_1
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 62
    :cond_0
    return-void

    :cond_1
    :try_start_2
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_21

    .line 63
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, -0x1

    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/firsttouchgames/dls7/OfflineProvider26;->line(Ljava/io/InputStream;)Ljava/lang/String;

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

    .line 64
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

    const-string v2, "DLS26-on-device"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ready"

    iget-object v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider26;->game:Lcom/firsttouchgames/dls7/OfflineGame26;

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

    iget v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider26;->requests:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "last_operation"

    iget-object v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider26;->lastOperation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v4, v0}, Lcom/firsttouchgames/dls7/OfflineProvider26;->reply(Ljava/net/Socket;ILorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 80
    if-eqz p1, :cond_6

    :try_start_3
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 64
    :cond_6
    return-void

    .line 65
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

    sget-object v8, Lcom/firsttouchgames/dls7/OfflineProvider26;->SESSION:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineProvider26;->game:Lcom/firsttouchgames/dls7/OfflineGame26;

    invoke-virtual {v0}, Lcom/firsttouchgames/dls7/OfflineGame26;->snapshot()Lorg/json/JSONObject;

    move-result-object v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {v0}, Lcom/firsttouchgames/dls7/OfflineProvider26;->redact(Ljava/lang/Object;)V

    invoke-static {p1, v4, v0}, Lcom/firsttouchgames/dls7/OfflineProvider26;->reply(Ljava/net/Socket;ILorg/json/JSONObject;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 80
    if-eqz p1, :cond_8

    :try_start_7
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 65
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

    .line 66
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v7, Lcom/firsttouchgames/dls7/OfflineProvider26;->SESSION:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "/last/"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    aget-object v7, v2, v5

    const-string v8, "GET"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/16 v8, 0x194

    if-eqz v7, :cond_e

    aget-object v7, v2, v6

    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    aget-object v0, v2, v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[A-Z0-9_]{1,80}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider26;->directory:Ljava/io/File;

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

    if-eqz v0, :cond_a

    goto :goto_2

    :cond_a
    move v4, v8

    :goto_2
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v3}, Lcom/firsttouchgames/dls7/OfflineProvider26;->read(Ljava/io/InputStream;)[B

    move-result-object v1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_3
    invoke-static {p1, v4, v0}, Lcom/firsttouchgames/dls7/OfflineProvider26;->reply(Ljava/net/Socket;ILorg/json/JSONObject;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 80
    if-eqz p1, :cond_c

    :try_start_a
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 67
    :cond_c
    return-void

    :cond_d
    :try_start_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid diagnostic operation"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_e
    aget-object v1, v2, v5

    const-string v7, "POST"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    aget-object v1, v2, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Lcom/firsttouchgames/dls7/OfflineProvider26;->SESSION:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "/resources"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v6

    goto :goto_4

    :cond_f
    move v1, v5

    .line 69
    :goto_4
    aget-object v7, v2, v5

    const-string v9, "POST"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    aget-object v7, v2, v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/firsttouchgames/dls7/OfflineProvider26;->SESSION:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/player"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    move v7, v6

    goto :goto_5

    :cond_10
    move v7, v5

    .line 70
    :goto_5
    aget-object v9, v2, v5

    const-string v10, "POST"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f

    aget-object v2, v2, v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/firsttouchgames/dls7/OfflineProvider26;->SESSION:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    if-nez v1, :cond_11

    if-nez v7, :cond_11

    goto/16 :goto_b

    .line 71
    :cond_11
    if-ltz v3, :cond_1e

    const/high16 v2, 0x800000

    if-gt v3, v2, :cond_1e

    new-array v2, v3, [B

    :goto_6
    if-ge v5, v3, :cond_13

    sub-int v8, v3, v5

    invoke-virtual {v0, v2, v5, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    if-ltz v8, :cond_12

    add-int/2addr v5, v8

    goto :goto_6

    :cond_12
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    :goto_7
    throw v0

    .line 72
    :cond_13
    if-eqz v1, :cond_18

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

    if-nez v2, :cond_14

    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_15

    :cond_14
    instance-of v2, v0, Ljava/lang/Integer;

    if-nez v2, :cond_16

    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_15

    goto :goto_8

    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Test resources require whole numbers"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_8
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/firsttouchgames/dls7/OfflineProvider26;->testResources(JJ)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v4, v0}, Lcom/firsttouchgames/dls7/OfflineProvider26;->reply(Ljava/net/Socket;ILorg/json/JSONObject;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 80
    if-eqz p1, :cond_17

    :try_start_c
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    .line 72
    :cond_17
    return-void

    .line 73
    :cond_18
    if-eqz v7, :cond_1b

    :try_start_d
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "player_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1a

    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_1a

    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0xffff

    if-ge v1, v2, :cond_1a

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/firsttouchgames/dls7/OfflineProvider26;->testPlayer(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v4, v0}, Lcom/firsttouchgames/dls7/OfflineProvider26;->reply(Ljava/net/Socket;ILorg/json/JSONObject;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 80
    if-eqz p1, :cond_19

    :try_start_e
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    .line 73
    :cond_19
    return-void

    :cond_1a
    :try_start_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid test player"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1b
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

    if-eqz v2, :cond_1d

    const-string v2, "values"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1c

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 75
    :cond_1c
    invoke-direct {p0, v1, v0}, Lcom/firsttouchgames/dls7/OfflineProvider26;->capture(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider26;->requests:I

    add-int/2addr v2, v6

    iput v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider26;->requests:I

    iput-object v1, p0, Lcom/firsttouchgames/dls7/OfflineProvider26;->lastOperation:Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 76
    :try_start_10
    invoke-direct {p0, v1, v0}, Lcom/firsttouchgames/dls7/OfflineProvider26;->transaction(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v4, v0}, Lcom/firsttouchgames/dls7/OfflineProvider26;->reply(Ljava/net/Socket;ILorg/json/JSONObject;)V

    const-string v0, "DroicerOffline26"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> 200 (saved locally)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 79
    :goto_9
    goto/16 :goto_a

    :catch_0
    move-exception v0

    :try_start_11
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "TR"

    const-string v4, "UNHANDLED_RESPONSE"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const/16 v3, 0x199

    invoke-static {p1, v3, v2}, Lcom/firsttouchgames/dls7/OfflineProvider26;->reply(Ljava/net/Socket;ILorg/json/JSONObject;)V

    const-string v2, "DroicerOffline26"

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

    .line 78
    :catch_1
    move-exception v0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "TR"

    const-string v3, "UNHANDLED_RESPONSE"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const/16 v2, 0x1f5

    invoke-static {p1, v2, v0}, Lcom/firsttouchgames/dls7/OfflineProvider26;->reply(Ljava/net/Socket;ILorg/json/JSONObject;)V

    const-string v0, "DroicerOffline26"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not implemented locally yet"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 77
    :catch_2
    move-exception v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "TR"

    iget-object v5, v0, Lcom/firsttouchgames/dls7/OfflineChallenges26$Rejected;->result:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {p1, v4, v2}, Lcom/firsttouchgames/dls7/OfflineProvider26;->reply(Ljava/net/Socket;ILorg/json/JSONObject;)V

    const-string v2, "DroicerOffline26"

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
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto/16 :goto_9

    .line 80
    :goto_a
    if-eqz p1, :cond_23

    :try_start_12
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3

    goto :goto_d

    .line 74
    :cond_1d
    :try_start_13
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid operation"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid request size"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 70
    :cond_1f
    :goto_b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1, v8, v0}, Lcom/firsttouchgames/dls7/OfflineProvider26;->reply(Ljava/net/Socket;ILorg/json/JSONObject;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 80
    if-eqz p1, :cond_20

    :try_start_14
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3

    .line 70
    :cond_20
    return-void

    .line 62
    :cond_21
    :try_start_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid HTTP request"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 61
    :catchall_1
    move-exception v0

    if-eqz p1, :cond_22

    :try_start_16
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    goto :goto_c

    :catchall_2
    move-exception p1

    :try_start_17
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_22
    :goto_c
    throw v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_3

    .line 80
    :catch_3
    move-exception p1

    const-string v0, "DroicerOffline26"

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

    .line 81
    :cond_23
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

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineProvider26;->game:Lcom/firsttouchgames/dls7/OfflineGame26;

    invoke-virtual {v0, p1}, Lcom/firsttouchgames/dls7/OfflineGame26;->testPlayer(I)Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;

    move-result-object p1

    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineProvider26;->save:Landroid/util/AtomicFile;

    iget-object v1, p1, Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;->state:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/firsttouchgames/dls7/OfflineProvider26;->atomic(Landroid/util/AtomicFile;[B)V

    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineProvider26;->game:Lcom/firsttouchgames/dls7/OfflineGame26;

    invoke-virtual {v0, p1}, Lcom/firsttouchgames/dls7/OfflineGame26;->accept(Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;)V

    const-string v0, "DroicerOffline26"

    const-string v1, "Authorized test player saved locally"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;->response:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 100
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

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineProvider26;->game:Lcom/firsttouchgames/dls7/OfflineGame26;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/firsttouchgames/dls7/OfflineGame26;->testResources(JJ)Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;

    move-result-object p1

    iget-object p2, p0, Lcom/firsttouchgames/dls7/OfflineProvider26;->save:Landroid/util/AtomicFile;

    iget-object p3, p1, Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;->state:Lorg/json/JSONObject;

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    sget-object p4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    invoke-static {p2, p3}, Lcom/firsttouchgames/dls7/OfflineProvider26;->atomic(Landroid/util/AtomicFile;[B)V

    iget-object p2, p0, Lcom/firsttouchgames/dls7/OfflineProvider26;->game:Lcom/firsttouchgames/dls7/OfflineGame26;

    invoke-virtual {p2, p1}, Lcom/firsttouchgames/dls7/OfflineGame26;->accept(Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;)V

    const-string p2, "DroicerOffline26"

    const-string p3, "Authorized test resources saved locally"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;->response:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 97
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized transaction(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineProvider26;->game:Lcom/firsttouchgames/dls7/OfflineGame26;

    invoke-virtual {v0, p1, p2}, Lcom/firsttouchgames/dls7/OfflineGame26;->prepare(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;

    move-result-object p1

    .line 85
    iget-object p2, p0, Lcom/firsttouchgames/dls7/OfflineProvider26;->save:Landroid/util/AtomicFile;

    iget-object v0, p1, Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;->state:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {p2, v0}, Lcom/firsttouchgames/dls7/OfflineProvider26;->atomic(Landroid/util/AtomicFile;[B)V

    iget-object p2, p0, Lcom/firsttouchgames/dls7/OfflineProvider26;->game:Lcom/firsttouchgames/dls7/OfflineGame26;

    invoke-virtual {p2, p1}, Lcom/firsttouchgames/dls7/OfflineGame26;->accept(Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;)V

    iget-object p1, p1, Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;->response:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 82
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 123
    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 121
    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 122
    const/4 p1, 0x0

    return-object p1
.end method

.method synthetic lambda$listen$2$com-firsttouchgames-dls7-OfflineProvider26(Ljava/net/Socket;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/firsttouchgames/dls7/OfflineProvider26;->serve(Ljava/net/Socket;)V

    return-void
.end method

.method synthetic lambda$onCreate$0$com-firsttouchgames-dls7-OfflineProvider26()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/firsttouchgames/dls7/OfflineProvider26;->listen()V

    return-void
.end method

.method public onCreate()Z
    .locals 9

    .line 27
    const-string v0, "dlsconfig.dat"

    const-string v1, "DroicerOffline26"

    invoke-virtual {p0}, Lcom/firsttouchgames/dls7/OfflineProvider26;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.firsttouchgames.dr26"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 29
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/firsttouchgames/dls7/OfflineProvider26;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "droicer/offline26"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider26;->directory:Ljava/io/File;

    iget-object v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider26;->directory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider26;->directory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Cannot create local save directory"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/firsttouchgames/dls7/OfflineProvider26;->asset(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/firsttouchgames/dls7/OfflineProvider26;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/firsttouchgames/dls7/OfflineProvider26;->read(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-static {v0, v2}, Lcom/firsttouchgames/dls7/OfflineProvider26;->atomic(Landroid/util/AtomicFile;[B)V

    .line 33
    :cond_4
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/firsttouchgames/dls7/OfflineProvider26;->directory:Ljava/io/File;

    const-string v5, "profile.json"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/firsttouchgames/dls7/OfflineProvider26;->save:Landroid/util/AtomicFile;

    .line 34
    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineProvider26;->save:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/firsttouchgames/dls7/OfflineProvider26;->save:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 35
    :cond_5
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider26;->directory:Ljava/io/File;

    const-string v4, "profile-seed.json"

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v5}, Lcom/firsttouchgames/dls7/OfflineProvider26;->read(Ljava/io/InputStream;)[B

    move-result-object v0

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_1

    :cond_6
    new-instance v0, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    const-string v4, "profile-template26.json"

    invoke-direct {p0, v4}, Lcom/firsttouchgames/dls7/OfflineProvider26;->asset(Ljava/lang/String;)[B

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 36
    :goto_1
    new-instance v2, Lcom/firsttouchgames/dls7/OfflineGame26;

    new-instance v4, Lorg/json/JSONObject;

    new-instance v5, Ljava/lang/String;

    const-string v6, "config26.json"

    invoke-direct {p0, v6}, Lcom/firsttouchgames/dls7/OfflineProvider26;->asset(Ljava/lang/String;)[B

    move-result-object v6

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v5, Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/String;

    const-string v7, "catalog26.json"

    invoke-direct {p0, v7}, Lcom/firsttouchgames/dls7/OfflineProvider26;->asset(Ljava/lang/String;)[B

    move-result-object v7

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4, v5, v0}, Lcom/firsttouchgames/dls7/OfflineGame26;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider26;->game:Lcom/firsttouchgames/dls7/OfflineGame26;

    .line 37
    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineProvider26;->save:Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/firsttouchgames/dls7/OfflineProvider26;->game:Lcom/firsttouchgames/dls7/OfflineGame26;

    invoke-virtual {v2}, Lcom/firsttouchgames/dls7/OfflineGame26;->snapshot()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/firsttouchgames/dls7/OfflineProvider26;->atomic(Landroid/util/AtomicFile;[B)V

    .line 38
    invoke-direct {p0}, Lcom/firsttouchgames/dls7/OfflineProvider26;->recoverScenarioResult()V

    .line 39
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    iput-object v0, p0, Lcom/firsttouchgames/dls7/OfflineProvider26;->listener:Ljava/net/ServerSocket;

    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineProvider26;->listener:Ljava/net/ServerSocket;

    new-instance v2, Ljava/net/InetSocketAddress;

    const-string v4, "127.0.0.1"

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const/16 v5, 0x6be

    invoke-direct {v2, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/16 v4, 0x8

    invoke-virtual {v0, v2, v4}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    .line 40
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/firsttouchgames/dls7/OfflineProvider26$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/firsttouchgames/dls7/OfflineProvider26$$ExternalSyntheticLambda2;-><init>(Lcom/firsttouchgames/dls7/OfflineProvider26;)V

    const-string v4, "DLS26OfflineListener"

    invoke-direct {v0, v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 43
    const-string v0, "DroicerOffline26Capability"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "capability="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/firsttouchgames/dls7/OfflineProvider26;->SESSION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string v0, "Local profile service ready; original Frontline requests stay on this device"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 45
    :catch_0
    move-exception v0

    const-string v2, "Local profile startup failed; upstream forwarding remains disabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 120
    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 124
    const/4 p1, 0x0

    return p1
.end method
