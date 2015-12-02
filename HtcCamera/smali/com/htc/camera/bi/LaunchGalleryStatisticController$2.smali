.class Lcom/htc/camera/bi/LaunchGalleryStatisticController$2;
.super Ljava/lang/Object;
.source "LaunchGalleryStatisticController.java"

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
.field final synthetic this$0:Lcom/htc/camera/bi/LaunchGalleryStatisticController;


# direct methods
.method constructor <init>(Lcom/htc/camera/bi/LaunchGalleryStatisticController;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/camera/bi/LaunchGalleryStatisticController$2;->this$0:Lcom/htc/camera/bi/LaunchGalleryStatisticController;

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
    .line 68
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/htc/camera/bi/LaunchGalleryStatisticController$2;->this$0:Lcom/htc/camera/bi/LaunchGalleryStatisticController;

    # getter for: Lcom/htc/camera/bi/LaunchGalleryStatisticController;->mHasChanged:Z
    invoke-static {v0}, Lcom/htc/camera/bi/LaunchGalleryStatisticController;->access$000(Lcom/htc/camera/bi/LaunchGalleryStatisticController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/htc/camera/bi/LaunchGalleryStatisticController$2;->this$0:Lcom/htc/camera/bi/LaunchGalleryStatisticController;

    invoke-virtual {v0}, Lcom/htc/camera/bi/LaunchGalleryStatisticController;->saveToPreference()V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/bi/LaunchGalleryStatisticController$2;->this$0:Lcom/htc/camera/bi/LaunchGalleryStatisticController;

    invoke-virtual {v0}, Lcom/htc/camera/bi/LaunchGalleryStatisticController;->loadFromPreference()V

    goto :goto_0
.end method
