.class Lcom/htc/camera/manualcapture/ToggleSeekBarButton$3;
.super Landroid/view/View;
.source "ToggleSeekBarButton.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/manualcapture/ToggleSeekBarButton;


# direct methods
.method constructor <init>(Lcom/htc/camera/manualcapture/ToggleSeekBarButton;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton$3;->this$0:Lcom/htc/camera/manualcapture/ToggleSeekBarButton;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton$3;->this$0:Lcom/htc/camera/manualcapture/ToggleSeekBarButton;

    # invokes: Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->drawOnIndicator(Landroid/graphics/Canvas;)V
    invoke-static {v0, p1}, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->access$200(Lcom/htc/camera/manualcapture/ToggleSeekBarButton;Landroid/graphics/Canvas;)V

    .line 142
    return-void
.end method
