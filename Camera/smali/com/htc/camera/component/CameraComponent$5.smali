.class Lcom/htc/camera/component/CameraComponent$5;
.super Ljava/lang/Object;
.source "CameraComponent.java"

# interfaces
.implements Lcom/htc/camera/component/n;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CameraComponent;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CameraComponent;)V
    .locals 0

    .prologue
    .line 901
    iput-object p1, p0, Lcom/htc/camera/component/CameraComponent$5;->this$0:Lcom/htc/camera/component/CameraComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rotate(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 0

    .prologue
    .line 904
    check-cast p1, Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p1, p2}, Lcom/htc/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/htc/camera/rotate/UIRotation;)V

    .line 905
    return-void
.end method
