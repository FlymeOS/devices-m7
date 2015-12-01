.class Lcom/htc/camera/component/MakeUpController$4;
.super Ljava/lang/Object;
.source "MakeUpController.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/MakeUpController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/MakeUpController;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/htc/camera/component/MakeUpController$4;->this$0:Lcom/htc/camera/component/MakeUpController;

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
    .line 189
    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController$4;->this$0:Lcom/htc/camera/component/MakeUpController;

    const/4 v1, 0x1

    # setter for: Lcom/htc/camera/component/MakeUpController;->m_NeedToSetParams:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/MakeUpController;->access$002(Lcom/htc/camera/component/MakeUpController;Z)Z

    .line 190
    return-void
.end method
