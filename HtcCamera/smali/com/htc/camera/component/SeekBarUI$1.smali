.class Lcom/htc/camera/component/SeekBarUI$1;
.super Ljava/lang/Object;
.source "SeekBarUI.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/imaging/Size;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/SeekBarUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/SeekBarUI;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/htc/camera/component/SeekBarUI$1;->this$0:Lcom/htc/camera/component/SeekBarUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/imaging/Size;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/imaging/Size;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI$1;->this$0:Lcom/htc/camera/component/SeekBarUI;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/camera/component/SeekBarUI$1;->this$0:Lcom/htc/camera/component/SeekBarUI;

    iget-object v2, v2, Lcom/htc/camera/component/SeekBarUI;->m_ControlBar0:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/component/SeekBarUI;->onSeekBarProgressChanged(II)V

    .line 136
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI$1;->this$0:Lcom/htc/camera/component/SeekBarUI;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/camera/component/SeekBarUI$1;->this$0:Lcom/htc/camera/component/SeekBarUI;

    iget-object v2, v2, Lcom/htc/camera/component/SeekBarUI;->m_ControlBar1:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/component/SeekBarUI;->onSeekBarProgressChanged(II)V

    .line 138
    :cond_0
    return-void
.end method
