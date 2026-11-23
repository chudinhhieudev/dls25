.class final Lcom/firsttouchgames/dls7/LocalDiagnostics25$Failure;
.super Ljava/lang/Object;
.source "LocalDiagnostics25.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firsttouchgames/dls7/LocalDiagnostics25;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Failure"
.end annotation


# instance fields
.field final detail:Ljava/lang/String;

.field final error:Ljava/lang/Throwable;

.field final time:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/firsttouchgames/dls7/LocalDiagnostics25$Failure;->time:J

    .line 44
    iput-object p1, p0, Lcom/firsttouchgames/dls7/LocalDiagnostics25$Failure;->detail:Ljava/lang/String;

    iput-object p2, p0, Lcom/firsttouchgames/dls7/LocalDiagnostics25$Failure;->error:Ljava/lang/Throwable;

    return-void
.end method
