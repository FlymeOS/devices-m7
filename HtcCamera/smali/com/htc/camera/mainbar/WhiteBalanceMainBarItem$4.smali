.class Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$4;
.super Lcom/htc/camera/base/DynamicPropertyChangedListener;
.source "WhiteBalanceMainBarItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/base/DynamicPropertyChangedListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;


# direct methods
.method constructor <init>(Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;Lcom/htc/camera/base/e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$4;->this$0:Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/base/DynamicPropertyChangedListener;-><init>(Lcom/htc/camera/base/e;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onPropertyChanged(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$4;->this$0:Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;

    iget-object v0, v0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    if-ne v0, v1, :cond_0

    .line 289
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$4;->this$0:Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;

    # invokes: Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->refreshIcons()V
    invoke-static {v0}, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->access$500(Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;)V

    .line 291
    :cond_0
    return-void
.end method
