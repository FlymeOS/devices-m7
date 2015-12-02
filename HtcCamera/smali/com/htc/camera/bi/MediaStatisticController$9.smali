.class Lcom/htc/camera/bi/MediaStatisticController$9;
.super Lcom/htc/camera/base/DynamicPropertyChangedListener;
.source "MediaStatisticController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/base/DynamicPropertyChangedListener",
        "<",
        "Lcom/htc/camera/io/StorageSlot;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/bi/MediaStatisticController;


# direct methods
.method constructor <init>(Lcom/htc/camera/bi/MediaStatisticController;Lcom/htc/camera/base/e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/htc/camera/bi/MediaStatisticController$9;->this$0:Lcom/htc/camera/bi/MediaStatisticController;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/base/DynamicPropertyChangedListener;-><init>(Lcom/htc/camera/base/e;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onPropertyChanged(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Lcom/htc/camera/io/StorageSlot;",
            ">;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<",
            "Lcom/htc/camera/io/StorageSlot;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/htc/camera/bi/MediaStatisticController$9;->this$0:Lcom/htc/camera/bi/MediaStatisticController;

    iget-object v1, p0, Lcom/htc/camera/bi/MediaStatisticController$9;->this$0:Lcom/htc/camera/bi/MediaStatisticController;

    invoke-virtual {v1}, Lcom/htc/camera/bi/MediaStatisticController;->rebuildComposeKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/camera/bi/MediaStatisticController;->mComposeKey:Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lcom/htc/camera/bi/MediaStatisticController$9;->this$0:Lcom/htc/camera/bi/MediaStatisticController;

    iget-object v1, p0, Lcom/htc/camera/bi/MediaStatisticController$9;->this$0:Lcom/htc/camera/bi/MediaStatisticController;

    iget-object v2, p0, Lcom/htc/camera/bi/MediaStatisticController$9;->this$0:Lcom/htc/camera/bi/MediaStatisticController;

    iget-object v2, v2, Lcom/htc/camera/bi/MediaStatisticController;->mComposeKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/camera/bi/MediaStatisticController;->getMediaCountInComposeKeyTable(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/htc/camera/bi/MediaStatisticController;->m_mediaTaken:I

    .line 240
    return-void
.end method
