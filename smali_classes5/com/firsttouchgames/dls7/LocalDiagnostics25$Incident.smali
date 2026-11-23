.class final Lcom/firsttouchgames/dls7/LocalDiagnostics25$Incident;
.super Ljava/lang/Object;
.source "LocalDiagnostics25.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firsttouchgames/dls7/LocalDiagnostics25;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Incident"
.end annotation


# instance fields
.field final key:Ljava/lang/String;

.field final text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/firsttouchgames/dls7/LocalDiagnostics25$Incident;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/firsttouchgames/dls7/LocalDiagnostics25$Incident;->text:Ljava/lang/String;

    return-void
.end method
