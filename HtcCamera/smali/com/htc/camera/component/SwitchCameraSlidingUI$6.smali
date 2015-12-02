.class Lcom/htc/camera/component/SwitchCameraSlidingUI$6;
.super Ljava/lang/Object;
.source "SwitchCameraSlidingUI.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/SwitchCameraSlidingUI;)V
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$6;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

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
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 531
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$6;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    const/4 v1, 0x1

    # setter for: Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_IsChangingZoom:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$2102(Lcom/htc/camera/component/SwitchCameraSlidingUI;Z)Z

    .line 532
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$6;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingDistance:I
    invoke-static {v0, v1}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$2202(Lcom/htc/camera/component/SwitchCameraSlidingUI;I)I

    .line 533
    return-void
.end method
