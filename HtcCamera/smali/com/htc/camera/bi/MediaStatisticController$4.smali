.class Lcom/htc/camera/bi/MediaStatisticController$4;
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
    .line 122
    iput-object p1, p0, Lcom/htc/camera/bi/MediaStatisticController$4;->this$0:Lcom/htc/camera/bi/MediaStatisticController;

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
    const/4 v2, 0x1

    .line 126
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/htc/camera/bi/MediaStatisticController$4;->this$0:Lcom/htc/camera/bi/MediaStatisticController;

    iput-boolean v2, v0, Lcom/htc/camera/bi/MediaStatisticController;->mIsResetToDefault:Z

    .line 134
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/bi/MediaStatisticController$4;->this$0:Lcom/htc/camera/bi/MediaStatisticController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/camera/bi/MediaStatisticController;->mIsResetToDefault:Z

    .line 132
    iget-object v0, p0, Lcom/htc/camera/bi/MediaStatisticController$4;->this$0:Lcom/htc/camera/bi/MediaStatisticController;

    iput-boolean v2, v0, Lcom/htc/camera/bi/MediaStatisticController;->mResetToDefaultCompleted:Z

    goto :goto_0
.end method
