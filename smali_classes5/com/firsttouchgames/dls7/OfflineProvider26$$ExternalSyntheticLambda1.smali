.class public final synthetic Lcom/firsttouchgames/dls7/OfflineProvider26$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/firsttouchgames/dls7/OfflineProvider26;

.field public final synthetic f$1:Ljava/net/Socket;


# direct methods
.method public synthetic constructor <init>(Lcom/firsttouchgames/dls7/OfflineProvider26;Ljava/net/Socket;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/firsttouchgames/dls7/OfflineProvider26$$ExternalSyntheticLambda1;->f$0:Lcom/firsttouchgames/dls7/OfflineProvider26;

    iput-object p2, p0, Lcom/firsttouchgames/dls7/OfflineProvider26$$ExternalSyntheticLambda1;->f$1:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/firsttouchgames/dls7/OfflineProvider26$$ExternalSyntheticLambda1;->f$0:Lcom/firsttouchgames/dls7/OfflineProvider26;

    iget-object v1, p0, Lcom/firsttouchgames/dls7/OfflineProvider26$$ExternalSyntheticLambda1;->f$1:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Lcom/firsttouchgames/dls7/OfflineProvider26;->lambda$listen$2$com-firsttouchgames-dls7-OfflineProvider26(Ljava/net/Socket;)V

    return-void
.end method
