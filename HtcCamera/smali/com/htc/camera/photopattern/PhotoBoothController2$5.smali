.class Lcom/htc/camera/photopattern/PhotoBoothController2$5;
.super Ljava/lang/Object;
.source "PhotoBoothController2.java"

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
.field final synthetic this$0:Lcom/htc/camera/photopattern/PhotoBoothController2;


# direct methods
.method constructor <init>(Lcom/htc/camera/photopattern/PhotoBoothController2;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2$5;->this$0:Lcom/htc/camera/photopattern/PhotoBoothController2;

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
    .line 462
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    if-eq v0, v1, :cond_0

    .line 464
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2$5;->this$0:Lcom/htc/camera/photopattern/PhotoBoothController2;

    const/4 v1, 0x0

    # invokes: Lcom/htc/camera/photopattern/PhotoBoothController2;->restoreResolutionProvider(I)V
    invoke-static {v0, v1}, Lcom/htc/camera/photopattern/PhotoBoothController2;->access$200(Lcom/htc/camera/photopattern/PhotoBoothController2;I)V

    .line 466
    :cond_0
    return-void
.end method
