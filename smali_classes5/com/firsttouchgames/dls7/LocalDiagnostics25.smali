.class public final Lcom/firsttouchgames/dls7/LocalDiagnostics25;
.super Ljava/lang/Object;
.source "LocalDiagnostics25.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firsttouchgames/dls7/LocalDiagnostics25$Failure;,
        Lcom/firsttouchgames/dls7/LocalDiagnostics25$Incident;
    }
.end annotation


# static fields
.field private static final failures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/firsttouchgames/dls7/LocalDiagnostics25$Failure;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lcom/firsttouchgames/dls7/LocalDiagnostics25;

.field private static final sequence:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final serverError:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private static final transportErrors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private static final worker:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private activity:Landroid/app/Activity;

.field private final context:Landroid/content/Context;

.field private dialog:Landroid/app/AlertDialog;

.field private final main:Landroid/os/Handler;

.field private final pending:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/firsttouchgames/dls7/LocalDiagnostics25$Incident;",
            ">;"
        }
    .end annotation
.end field

.field private showing:Lcom/firsttouchgames/dls7/LocalDiagnostics25$Incident;


# direct methods
.method public static synthetic $r8$lambda$FxNGWE3CMT4ajiJBqJ_Taoc03Fo(Lcom/firsttouchgames/dls7/LocalDiagnostics25;)V
    .locals 0

    invoke-direct {p0}, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->showNext()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 10

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->sequence:Ljava/util/concurrent/atomic/AtomicLong;

    .line 31
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->serverError:Ljava/lang/ThreadLocal;

    .line 32
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->failures:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->transportErrors:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xc

    invoke-direct {v7, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v8, Lcom/firsttouchgames/dls7/LocalDiagnostics25$$ExternalSyntheticLambda7;

    invoke-direct {v8}, Lcom/firsttouchgames/dls7/LocalDiagnostics25$$ExternalSyntheticLambda7;-><init>()V

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->worker:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->main:Landroid/os/Handler;

    .line 38
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->pending:Ljava/util/ArrayDeque;

    .line 50
    iput-object p1, p0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->context:Landroid/content/Context;

    return-void
.end method

.method private enqueue(Lcom/firsttouchgames/dls7/LocalDiagnostics25$Incident;)V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->showing:Lcom/firsttouchgames/dls7/LocalDiagnostics25$Incident;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->showing:Lcom/firsttouchgames/dls7/LocalDiagnostics25$Incident;

    iget-object v0, v0, Lcom/firsttouchgames/dls7/LocalDiagnostics25$Incident;->key:Ljava/lang/String;

    iget-object v1, p1, Lcom/firsttouchgames/dls7/LocalDiagnostics25$Incident;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->pending:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firsttouchgames/dls7/LocalDiagnostics25$Incident;

    iget-object v1, v1, Lcom/firsttouchgames/dls7/LocalDiagnostics25$Incident;->key:Ljava/lang/String;

    iget-object v2, p1, Lcom/firsttouchgames/dls7/LocalDiagnostics25$Incident;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->pending:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->pending:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 146
    :cond_3
    iget-object v0, p0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->pending:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->showNext()V

    .line 147
    return-void
.end method

.method private static field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 77
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 78
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static httpFinished(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 83
    :try_start_0
    const-string v0, "b"

    invoke-static {p0, v0}, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 85
    :goto_0
    const/4 v0, 0x0

    if-eqz v2, :cond_4

    const-string v3, "127.0.0.1"

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v3

    const/16 v4, 0x6bd

    if-eq v3, v4, :cond_3

    :cond_1
    const-string v3, "dls7.api.ftpub.net"

    .line 86
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "dls7.cf.api.ftpub.net"

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 87
    :cond_2
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/DLS_Frontline_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    move v2, v0

    .line 88
    :goto_1
    if-nez p1, :cond_5

    :goto_2
    goto :goto_3

    :cond_5
    const-string v0, "b"

    invoke-static {p1, v0}, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    .line 89
    :goto_3
    if-nez p1, :cond_6

    move-object v3, v1

    goto :goto_4

    :cond_6
    const-string v3, "d"

    invoke-static {p1, v3}, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 90
    :goto_4
    instance-of v4, v3, Ljava/lang/Enum;

    if-eqz v4, :cond_7

    check-cast v3, Ljava/lang/Enum;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_7
    const-string v3, ""

    .line 91
    :goto_5
    const/16 v4, 0xc8

    if-lt v0, v4, :cond_8

    const/16 v4, 0x190

    if-ge v0, v4, :cond_8

    const-string v4, "FAIL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    return-void

    .line 92
    :cond_8
    if-nez v2, :cond_9

    return-void

    .line 93
    :cond_9
    const-string v2, "f"

    invoke-static {p0, v2}, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p1, :cond_a

    :goto_6
    goto :goto_7

    :cond_a
    const-string v1, "c"

    invoke-static {p1, v1}, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_6

    .line 95
    :goto_7
    sget-object v2, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->transportErrors:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v3, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->transportErrors:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :try_start_2
    sget-object v2, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/firsttouchgames/dls7/LocalDiagnostics25$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/firsttouchgames/dls7/LocalDiagnostics25$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_8

    .line 95
    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 108
    :catchall_1
    move-exception p0

    :goto_8
    nop

    .line 109
    return-void
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->instance:Lcom/firsttouchgames/dls7/LocalDiagnostics25;

    if-nez v1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 55
    instance-of v1, p0, Landroid/app/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    .line 56
    :cond_1
    :try_start_1
    new-instance v1, Lcom/firsttouchgames/dls7/LocalDiagnostics25;

    invoke-direct {v1, p0}, Lcom/firsttouchgames/dls7/LocalDiagnostics25;-><init>(Landroid/content/Context;)V

    .line 57
    check-cast p0, Landroid/app/Application;

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    sput-object v1, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->instance:Lcom/firsttouchgames/dls7/LocalDiagnostics25;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 53
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    .line 58
    :catchall_0
    move-exception p0

    :goto_1
    nop

    .line 59
    monitor-exit v0

    return-void
.end method

.method static synthetic lambda$httpFinished$1(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .line 97
    invoke-static {p0}, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->operation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 98
    sget-object v0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->failures:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->failures:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firsttouchgames/dls7/LocalDiagnostics25$Failure;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 100
    const/4 v0, 0x0

    :goto_0
    if-nez v1, :cond_0

    const/16 v2, 0x190

    if-lt p1, v2, :cond_0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 101
    const-wide/16 v2, 0xa

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    sget-object v2, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->failures:Ljava/util/Map;

    monitor-enter v2

    :try_start_2
    sget-object v1, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->failures:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firsttouchgames/dls7/LocalDiagnostics25$Failure;

    monitor-exit v2

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 101
    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 104
    :cond_0
    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/firsttouchgames/dls7/LocalDiagnostics25$Failure;->time:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 105
    const-string p2, "API_LOCAL"

    iget-object p3, v1, Lcom/firsttouchgames/dls7/LocalDiagnostics25$Failure;->detail:Ljava/lang/String;

    iget-object v0, v1, Lcom/firsttouchgames/dls7/LocalDiagnostics25$Failure;->error:Ljava/lang/Throwable;

    invoke-static {p2, p0, p1, p3, v0}, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->report(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 106
    :cond_1
    const-string v0, "TRANSPORTE_LOCAL"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->report(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    :goto_1
    return-void

    .line 98
    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method static synthetic lambda$report$2(Lcom/firsttouchgames/dls7/LocalDiagnostics25;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 130
    new-instance v0, Lcom/firsttouchgames/dls7/LocalDiagnostics25$Incident;

    invoke-direct {v0, p1, p2}, Lcom/firsttouchgames/dls7/LocalDiagnostics25$Incident;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->enqueue(Lcom/firsttouchgames/dls7/LocalDiagnostics25$Incident;)V

    return-void
.end method

.method static synthetic lambda$showNext$3(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 156
    return-void
.end method

.method static synthetic lambda$showNext$5(Landroid/app/Activity;Lcom/firsttouchgames/dls7/LocalDiagnostics25$Incident;Landroid/view/View;)V
    .locals 2

    .line 162
    const/4 p2, 0x0

    :try_start_0
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 163
    const-string v1, "Reporte DLS25"

    iget-object p1, p1, Lcom/firsttouchgames/dls7/LocalDiagnostics25$Incident;->text:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 164
    const-string p1, "Reporte copiado"

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    goto :goto_0

    :catch_0
    move-exception p1

    const-string p1, "No se pudo copiar"

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 166
    :goto_0
    return-void
.end method

.method static synthetic lambda$showNext$6(Landroid/app/Activity;Lcom/firsttouchgames/dls7/LocalDiagnostics25$Incident;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 170
    const/4 p3, 0x1

    :try_start_0
    iget-object p1, p1, Lcom/firsttouchgames/dls7/LocalDiagnostics25$Incident;->text:Ljava/lang/String;

    invoke-static {p1}, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->reportIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 171
    invoke-virtual {p2}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception p1

    .line 175
    const-string p1, "No se pudo abrir el correo. Usa Copiar."

    invoke-static {p0, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 172
    :catch_1
    move-exception p1

    .line 173
    const-string p1, "No hay una aplicaci\u00f3n de correo. Usa Copiar."

    invoke-static {p0, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 176
    :goto_0
    nop

    .line 177
    :goto_1
    return-void
.end method

.method static synthetic lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "DLS25Diagnostics"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private metadata()Ljava/lang/String;
    .locals 4

    .line 134
    const-string v0, "desconocida"

    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    .line 136
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "64 bits"

    goto :goto_1

    :cond_0
    const-string v3, "32 bits"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 137
    const-string v3, "os.arch"

    invoke-static {v3, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Juego: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nAndroid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / API "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nDispositivo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nProceso: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static operation(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 111
    const-string v0, "b&z"

    invoke-static {p0}, Lcom/firsttouchgames/dls7/DiagnosticReport25;->operation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    const-string v2, "API"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/high16 v4, 0x200000

    if-le v3, v4, :cond_0

    goto/16 :goto_3

    .line 114
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 115
    const-string p0, "type"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v1

    .line 116
    :cond_1
    const-string p0, "values"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 117
    new-instance v1, Ljava/util/zip/InflaterInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v3}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 118
    const/16 v3, 0x1000

    :try_start_2
    new-array v3, v3, [B

    .line 119
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/2addr v5, v4

    const/high16 v6, 0x20000

    if-le v5, v6, :cond_2

    .line 121
    :try_start_3
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 119
    return-object v2

    :cond_2
    :try_start_5
    invoke-virtual {p0, v3, v0, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 120
    :cond_3
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/firsttouchgames/dls7/DiagnosticReport25;->operation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 121
    :try_start_6
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 120
    return-object v0

    .line 117
    :catchall_0
    move-exception v0

    :try_start_8
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_9
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    :try_start_b
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 122
    :catch_0
    move-exception p0

    return-object v2

    .line 112
    :cond_4
    :goto_3
    return-object v1
.end method

.method public static recordOperation(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    .line 68
    :try_start_0
    sget-object v0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->serverError:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    sget-object v1, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->serverError:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 69
    const/16 v1, 0x190

    if-ge p1, v1, :cond_0

    return-void

    .line 70
    :cond_0
    sget-object v1, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->failures:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 71
    :try_start_1
    sget-object v2, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->failures:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    sget-object v2, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->failures:Ljava/util/Map;

    sget-object v3, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->failures:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_1
    sget-object v2, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->failures:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/firsttouchgames/dls7/DiagnosticReport25;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/firsttouchgames/dls7/LocalDiagnostics25$Failure;

    invoke-direct {p1, p2, v0}, Lcom/firsttouchgames/dls7/LocalDiagnostics25$Failure;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 74
    :catchall_1
    move-exception p0

    :goto_0
    nop

    .line 75
    return-void
.end method

.method private static report(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 10

    .line 126
    const-string v0, ":"

    :try_start_0
    sget-object v1, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->instance:Lcom/firsttouchgames/dls7/LocalDiagnostics25;

    if-nez v1, :cond_0

    return-void

    .line 127
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/16 v5, 0x24

    invoke-static {v3, v4, v5}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->sequence:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-direct {v1}, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->metadata()Ljava/lang/String;

    move-result-object v9

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v3 .. v9}, Lcom/firsttouchgames/dls7/DiagnosticReport25;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p3, p4, p2}, Lcom/firsttouchgames/dls7/DiagnosticReport25;->reason(Ljava/lang/String;Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 130
    iget-object p1, v1, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->main:Landroid/os/Handler;

    new-instance p2, Lcom/firsttouchgames/dls7/LocalDiagnostics25$$ExternalSyntheticLambda4;

    invoke-direct {p2, v1, p0, v2}, Lcom/firsttouchgames/dls7/LocalDiagnostics25$$ExternalSyntheticLambda4;-><init>(Lcom/firsttouchgames/dls7/LocalDiagnostics25;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 131
    :catchall_0
    move-exception p0

    :goto_0
    nop

    .line 132
    return-void
.end method

.method static reportIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 181
    new-instance v0, Landroid/content/Intent;

    invoke-static {p0}, Lcom/firsttouchgames/dls7/ReportEmail25;->uri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 182
    const-string v1, "appbugsrepo@gmail.com"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-static {p0}, Lcom/firsttouchgames/dls7/ReportEmail25;->subject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    return-object v0
.end method

.method public static serverException(Ljava/lang/Throwable;)V
    .locals 1

    .line 61
    :try_start_0
    sget-object v0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->serverError:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :goto_0
    return-void
.end method

.method private showNext()V
    .locals 6

    .line 149
    iget-object v0, p0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->dialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->pending:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->pending:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firsttouchgames/dls7/LocalDiagnostics25$Incident;

    iget-object v1, p0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->activity:Landroid/app/Activity;

    .line 152
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v4, v0, Lcom/firsttouchgames/dls7/LocalDiagnostics25$Incident;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 153
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x41800000    # 16.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 154
    new-instance v4, Landroid/widget/ScrollView;

    invoke-direct {v4, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 155
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "Error de conexi\u00f3n \u00b7 Diagn\u00f3stico"

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 156
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Reportar"

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Copiar"

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Cerrar"

    new-instance v5, Lcom/firsttouchgames/dls7/LocalDiagnostics25$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/firsttouchgames/dls7/LocalDiagnostics25$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 157
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 158
    new-instance v4, Lcom/firsttouchgames/dls7/LocalDiagnostics25$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/firsttouchgames/dls7/LocalDiagnostics25$$ExternalSyntheticLambda1;-><init>(Lcom/firsttouchgames/dls7/LocalDiagnostics25;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 159
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    iget-object v4, p0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->pending:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    iput-object v0, p0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->showing:Lcom/firsttouchgames/dls7/LocalDiagnostics25$Incident;

    iput-object v3, p0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->dialog:Landroid/app/AlertDialog;

    .line 160
    const/4 v4, -0x3

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    new-instance v5, Lcom/firsttouchgames/dls7/LocalDiagnostics25$$ExternalSyntheticLambda2;

    invoke-direct {v5, v1, v0}, Lcom/firsttouchgames/dls7/LocalDiagnostics25$$ExternalSyntheticLambda2;-><init>(Landroid/app/Activity;Lcom/firsttouchgames/dls7/LocalDiagnostics25$Incident;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    new-instance v5, Lcom/firsttouchgames/dls7/LocalDiagnostics25$$ExternalSyntheticLambda3;

    invoke-direct {v5, v1, v0, v3}, Lcom/firsttouchgames/dls7/LocalDiagnostics25$$ExternalSyntheticLambda3;-><init>(Landroid/app/Activity;Lcom/firsttouchgames/dls7/LocalDiagnostics25$Incident;Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v2, p0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->dialog:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->showing:Lcom/firsttouchgames/dls7/LocalDiagnostics25$Incident;

    .line 179
    :goto_0
    return-void

    .line 149
    :cond_1
    :goto_1
    return-void
.end method

.method public static startupFailure(Ljava/lang/Throwable;)V
    .locals 4

    .line 60
    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "INICIO_SERVICIO"

    const-string v3, "SIGNIN"

    invoke-static {v2, v3, v0, v1, p0}, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->report(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static transportException(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    .line 63
    :try_start_0
    sget-object v0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->transportErrors:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->transportErrors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0x20

    if-lt v1, v2, :cond_0

    sget-object v1, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->transportErrors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_0
    sget-object v1, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->transportErrors:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 64
    :catchall_1
    move-exception p0

    :goto_0
    nop

    .line 65
    return-void
.end method


# virtual methods
.method synthetic lambda$showNext$4$com-firsttouchgames-dls7-LocalDiagnostics25(Landroid/content/DialogInterface;)V
    .locals 1

    .line 158
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->dialog:Landroid/app/AlertDialog;

    iput-object p1, p0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->showing:Lcom/firsttouchgames/dls7/LocalDiagnostics25$Incident;

    iget-object p1, p0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->main:Landroid/os/Handler;

    new-instance v0, Lcom/firsttouchgames/dls7/LocalDiagnostics25$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/firsttouchgames/dls7/LocalDiagnostics25$$ExternalSyntheticLambda6;-><init>(Lcom/firsttouchgames/dls7/LocalDiagnostics25;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 193
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 192
    invoke-virtual {p0, p1}, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->onActivityPaused(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->activity:Landroid/app/Activity;

    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->activity:Landroid/app/Activity;

    iget-object p1, p0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->dialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->showing:Lcom/firsttouchgames/dls7/LocalDiagnostics25$Incident;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->pending:Ljava/util/ArrayDeque;

    iget-object v0, p0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->showing:Lcom/firsttouchgames/dls7/LocalDiagnostics25$Incident;

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 188
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.firsttouchgames.dls7.MainActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 189
    :cond_0
    iput-object p1, p0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->activity:Landroid/app/Activity;

    iget-object p1, p0, Lcom/firsttouchgames/dls7/LocalDiagnostics25;->main:Landroid/os/Handler;

    new-instance v0, Lcom/firsttouchgames/dls7/LocalDiagnostics25$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/firsttouchgames/dls7/LocalDiagnostics25$$ExternalSyntheticLambda6;-><init>(Lcom/firsttouchgames/dls7/LocalDiagnostics25;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 190
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 196
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 194
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 195
    return-void
.end method
