.class Lcom/htc/camera/menu/SceneMenuItem$1;
.super Ljava/lang/Object;
.source "SceneMenuItem.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/menu/SceneMenuItem;


# direct methods
.method constructor <init>(Lcom/htc/camera/menu/SceneMenuItem;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/htc/camera/menu/SceneMenuItem$1;->this$0:Lcom/htc/camera/menu/SceneMenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/camera/menu/SceneMenuItem$1;->this$0:Lcom/htc/camera/menu/SceneMenuItem;

    const/4 v1, 0x1

    # setter for: Lcom/htc/camera/menu/SceneMenuItem;->m_IsExpandButtonClicked:Z
    invoke-static {v0, v1}, Lcom/htc/camera/menu/SceneMenuItem;->access$002(Lcom/htc/camera/menu/SceneMenuItem;Z)Z

    .line 98
    const/4 v0, 0x0

    return v0
.end method
