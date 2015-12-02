.class Lcom/htc/camera/bi/SplitPhotoStatisticController$2;
.super Ljava/lang/Object;
.source "SplitPhotoStatisticController.java"

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
.field final synthetic this$0:Lcom/htc/camera/bi/SplitPhotoStatisticController;


# direct methods
.method constructor <init>(Lcom/htc/camera/bi/SplitPhotoStatisticController;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/htc/camera/bi/SplitPhotoStatisticController$2;->this$0:Lcom/htc/camera/bi/SplitPhotoStatisticController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 1
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
    .line 85
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/htc/camera/bi/SplitPhotoStatisticController$2;->this$0:Lcom/htc/camera/bi/SplitPhotoStatisticController;

    # getter for: Lcom/htc/camera/bi/SplitPhotoStatisticController;->mHasChanged:Z
    invoke-static {v0}, Lcom/htc/camera/bi/SplitPhotoStatisticController;->access$200(Lcom/htc/camera/bi/SplitPhotoStatisticController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/htc/camera/bi/SplitPhotoStatisticController$2;->this$0:Lcom/htc/camera/bi/SplitPhotoStatisticController;

    invoke-virtual {v0}, Lcom/htc/camera/bi/SplitPhotoStatisticController;->saveToPreference()V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/bi/SplitPhotoStatisticController$2;->this$0:Lcom/htc/camera/bi/SplitPhotoStatisticController;

    invoke-virtual {v0}, Lcom/htc/camera/bi/SplitPhotoStatisticController;->loadFromPreference()V

    goto :goto_0
.end method
