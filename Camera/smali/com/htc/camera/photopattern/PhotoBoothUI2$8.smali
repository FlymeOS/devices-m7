.class Lcom/htc/camera/photopattern/PhotoBoothUI2$8;
.super Ljava/lang/Object;
.source "PhotoBoothUI2.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;


# direct methods
.method constructor <init>(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V
    .locals 0

    .prologue
    .line 756
    iput-object p1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$8;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 761
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$8;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # getter for: Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$1900(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isFirstPreviewFrameReceived - hide preview cover"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$8;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$8;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # getter for: Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_showPreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;
    invoke-static {v1}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$2000(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Lcom/htc/camera/CloseableHandleReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    move-result-object v1

    # setter for: Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_showPreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;
    invoke-static {v0, v1}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$2002(Lcom/htc/camera/photopattern/PhotoBoothUI2;Lcom/htc/camera/CloseableHandleReference;)Lcom/htc/camera/CloseableHandleReference;

    .line 766
    :cond_0
    return-void
.end method
