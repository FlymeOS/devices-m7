.class Lcom/htc/camera/mainbar/ISOMainBarItem$1;
.super Ljava/lang/Object;
.source "ISOMainBarItem.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/mainbar/ISOMainBarItem;


# direct methods
.method constructor <init>(Lcom/htc/camera/mainbar/ISOMainBarItem;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/htc/camera/mainbar/ISOMainBarItem$1;->this$0:Lcom/htc/camera/mainbar/ISOMainBarItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 3

    .prologue
    .line 343
    iget-object v2, p0, Lcom/htc/camera/mainbar/ISOMainBarItem$1;->this$0:Lcom/htc/camera/mainbar/ISOMainBarItem;

    invoke-virtual {p1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraMode;

    iget-object v1, p0, Lcom/htc/camera/mainbar/ISOMainBarItem$1;->this$0:Lcom/htc/camera/mainbar/ISOMainBarItem;

    iget-object v1, v1, Lcom/htc/camera/mainbar/ISOMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v1, v1, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraType;

    # invokes: Lcom/htc/camera/mainbar/ISOMainBarItem;->updateItem(Lcom/htc/camera/CameraMode;Lcom/htc/camera/CameraType;)V
    invoke-static {v2, v0, v1}, Lcom/htc/camera/mainbar/ISOMainBarItem;->access$400(Lcom/htc/camera/mainbar/ISOMainBarItem;Lcom/htc/camera/CameraMode;Lcom/htc/camera/CameraType;)V

    .line 344
    iget-object v0, p0, Lcom/htc/camera/mainbar/ISOMainBarItem$1;->this$0:Lcom/htc/camera/mainbar/ISOMainBarItem;

    # invokes: Lcom/htc/camera/mainbar/ISOMainBarItem;->updateEnableState()V
    invoke-static {v0}, Lcom/htc/camera/mainbar/ISOMainBarItem;->access$500(Lcom/htc/camera/mainbar/ISOMainBarItem;)V

    .line 345
    return-void
.end method
