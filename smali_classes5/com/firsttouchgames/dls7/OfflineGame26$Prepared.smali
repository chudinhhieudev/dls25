.class final Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;
.super Ljava/lang/Object;
.source "OfflineGame26.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firsttouchgames/dls7/OfflineGame26;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Prepared"
.end annotation


# instance fields
.field final response:Lorg/json/JSONObject;

.field final state:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;->state:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/firsttouchgames/dls7/OfflineGame26$Prepared;->response:Lorg/json/JSONObject;

    return-void
.end method
