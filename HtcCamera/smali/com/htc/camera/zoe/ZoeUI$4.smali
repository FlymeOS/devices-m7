.class Lcom/htc/camera/zoe/ZoeUI$4;
.super Ljava/lang/Object;
.source "ZoeUI.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/CameraMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/zoe/ZoeUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/zoe/ZoeUI;)V
    .locals 0

    .prologue
    .line 847
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeUI$4;->this$0:Lcom/htc/camera/zoe/ZoeUI;

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
            "Lcom/htc/camera/CameraMode;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/CameraMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 857
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-eq v0, v1, :cond_0

    .line 858
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$4;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/camera/zoe/ZoeUI;->exit(I)V

    .line 859
    :cond_0
    return-void
.end method
