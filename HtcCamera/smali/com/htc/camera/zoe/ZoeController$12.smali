.class Lcom/htc/camera/zoe/ZoeController$12;
.super Ljava/lang/Object;
.source "ZoeController.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/CameraType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/zoe/ZoeController;


# direct methods
.method constructor <init>(Lcom/htc/camera/zoe/ZoeController;)V
    .locals 0

    .prologue
    .line 1239
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeController$12;->this$0:Lcom/htc/camera/zoe/ZoeController;

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
            "Lcom/htc/camera/CameraType;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/CameraType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1243
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    if-eq v0, v1, :cond_0

    .line 1244
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$12;->this$0:Lcom/htc/camera/zoe/ZoeController;

    const/4 v1, 0x4

    # invokes: Lcom/htc/camera/zoe/ZoeController;->exitZoeMode(I)V
    invoke-static {v0, v1}, Lcom/htc/camera/zoe/ZoeController;->access$2600(Lcom/htc/camera/zoe/ZoeController;I)V

    .line 1247
    :cond_0
    return-void
.end method
