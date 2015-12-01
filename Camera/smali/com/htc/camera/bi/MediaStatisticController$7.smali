.class Lcom/htc/camera/bi/MediaStatisticController$7;
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
        "Lcom/htc/camera/capturemode/CaptureMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/bi/MediaStatisticController;


# direct methods
.method constructor <init>(Lcom/htc/camera/bi/MediaStatisticController;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/htc/camera/bi/MediaStatisticController$7;->this$0:Lcom/htc/camera/bi/MediaStatisticController;

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
            "Lcom/htc/camera/capturemode/CaptureMode;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/capturemode/CaptureMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcom/htc/camera/bi/MediaStatisticController$7;->this$0:Lcom/htc/camera/bi/MediaStatisticController;

    iget-object v1, p0, Lcom/htc/camera/bi/MediaStatisticController$7;->this$0:Lcom/htc/camera/bi/MediaStatisticController;

    invoke-virtual {v1}, Lcom/htc/camera/bi/MediaStatisticController;->rebuildComposeKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/camera/bi/MediaStatisticController;->mComposeKey:Ljava/lang/String;

    .line 213
    iget-object v0, p0, Lcom/htc/camera/bi/MediaStatisticController$7;->this$0:Lcom/htc/camera/bi/MediaStatisticController;

    iget-object v1, p0, Lcom/htc/camera/bi/MediaStatisticController$7;->this$0:Lcom/htc/camera/bi/MediaStatisticController;

    iget-object v2, p0, Lcom/htc/camera/bi/MediaStatisticController$7;->this$0:Lcom/htc/camera/bi/MediaStatisticController;

    iget-object v2, v2, Lcom/htc/camera/bi/MediaStatisticController;->mComposeKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/camera/bi/MediaStatisticController;->getMediaCountInComposeKeyTable(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/htc/camera/bi/MediaStatisticController;->m_mediaTaken:I

    .line 214
    return-void
.end method
