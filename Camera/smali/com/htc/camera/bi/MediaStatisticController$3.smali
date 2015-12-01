.class Lcom/htc/camera/bi/MediaStatisticController$3;
.super Ljava/lang/Object;
.source "MediaStatisticController.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/bi/MediaStatisticController;


# direct methods
.method constructor <init>(Lcom/htc/camera/bi/MediaStatisticController;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/htc/camera/bi/MediaStatisticController$3;->this$0:Lcom/htc/camera/bi/MediaStatisticController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/htc/camera/bi/MediaStatisticController$3;->this$0:Lcom/htc/camera/bi/MediaStatisticController;

    iget-object v1, p0, Lcom/htc/camera/bi/MediaStatisticController$3;->this$0:Lcom/htc/camera/bi/MediaStatisticController;

    invoke-virtual {v1}, Lcom/htc/camera/bi/MediaStatisticController;->rebuildComposeKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/camera/bi/MediaStatisticController;->mComposeKey:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/htc/camera/bi/MediaStatisticController$3;->this$0:Lcom/htc/camera/bi/MediaStatisticController;

    iget-object v1, p0, Lcom/htc/camera/bi/MediaStatisticController$3;->this$0:Lcom/htc/camera/bi/MediaStatisticController;

    iget-object v2, p0, Lcom/htc/camera/bi/MediaStatisticController$3;->this$0:Lcom/htc/camera/bi/MediaStatisticController;

    iget-object v2, v2, Lcom/htc/camera/bi/MediaStatisticController;->mComposeKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/camera/bi/MediaStatisticController;->getMediaCountInComposeKeyTable(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/htc/camera/bi/MediaStatisticController;->m_mediaTaken:I

    .line 113
    iget-object v0, p0, Lcom/htc/camera/bi/MediaStatisticController$3;->this$0:Lcom/htc/camera/bi/MediaStatisticController;

    # getter for: Lcom/htc/camera/bi/MediaStatisticController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/bi/MediaStatisticController;->access$100(Lcom/htc/camera/bi/MediaStatisticController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dialog dismiss"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    return-void
.end method
