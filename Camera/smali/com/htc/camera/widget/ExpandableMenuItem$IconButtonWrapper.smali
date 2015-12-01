.class public Lcom/htc/camera/widget/ExpandableMenuItem$IconButtonWrapper;
.super Lcom/htc/lib1/cc/widget/HtcIconButton;
.source "ExpandableMenuItem.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/widget/ExpandableMenuItem;


# direct methods
.method public constructor <init>(Lcom/htc/camera/widget/ExpandableMenuItem;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/htc/camera/widget/ExpandableMenuItem$IconButtonWrapper;->this$0:Lcom/htc/camera/widget/ExpandableMenuItem;

    .line 28
    invoke-direct {p0, p2}, Lcom/htc/lib1/cc/widget/HtcIconButton;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcIconButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 35
    iget-object v1, p0, Lcom/htc/camera/widget/ExpandableMenuItem$IconButtonWrapper;->this$0:Lcom/htc/camera/widget/ExpandableMenuItem;

    # invokes: Lcom/htc/camera/widget/ExpandableMenuItem;->onIconButtonTouched(Landroid/view/MotionEvent;)V
    invoke-static {v1, p1}, Lcom/htc/camera/widget/ExpandableMenuItem;->access$000(Lcom/htc/camera/widget/ExpandableMenuItem;Landroid/view/MotionEvent;)V

    .line 36
    return v0
.end method
