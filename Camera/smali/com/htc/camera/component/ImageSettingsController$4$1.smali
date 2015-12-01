.class Lcom/htc/camera/component/ImageSettingsController$4$1;
.super Ljava/lang/Object;
.source "ImageSettingsController.java"

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
.field final synthetic this$1:Lcom/htc/camera/component/ImageSettingsController$4;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ImageSettingsController$4;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/htc/camera/component/ImageSettingsController$4$1;->this$1:Lcom/htc/camera/component/ImageSettingsController$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 2
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
    .line 367
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController$4$1;->this$1:Lcom/htc/camera/component/ImageSettingsController$4;

    iget-object v0, v0, Lcom/htc/camera/component/ImageSettingsController$4;->this$0:Lcom/htc/camera/component/ImageSettingsController;

    new-instance v1, Lcom/htc/camera/component/ImageSettingsController$4$1$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/ImageSettingsController$4$1$1;-><init>(Lcom/htc/camera/component/ImageSettingsController$4$1;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/ImageSettingsController;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 383
    :cond_0
    return-void
.end method
