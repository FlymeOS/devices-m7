.class Lcom/htc/camera/photopattern/PhotoBoothUI2$12;
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
        "Lcom/htc/camera/UIState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;


# direct methods
.method constructor <init>(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V
    .locals 0

    .prologue
    .line 1290
    iput-object p1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$12;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/UIState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/UIState;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1293
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/htc/camera/UIState;->Opening:Lcom/htc/camera/UIState;

    if-ne v0, v1, :cond_0

    .line 1296
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$12;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    iget-object v0, v0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->isPhotoBoothActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$12;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # getter for: Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_ReviewImageContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;
    invoke-static {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$2200(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Lcom/htc/camera/rotate/RotateRelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1299
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$12;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # getter for: Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_ReviewImageContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;
    invoke-static {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$2200(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Lcom/htc/camera/rotate/RotateRelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$12;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # invokes: Lcom/htc/camera/photopattern/PhotoBoothUI2;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;
    invoke-static {v1}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$2300(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Lcom/htc/camera/rotate/UIRotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/htc/camera/rotate/UIRotation;)V

    .line 1300
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$12;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$12;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # getter for: Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_ReviewImageContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;
    invoke-static {v1}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$2200(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Lcom/htc/camera/rotate/RotateRelativeLayout;

    move-result-object v1

    const/4 v2, 0x0

    # invokes: Lcom/htc/camera/photopattern/PhotoBoothUI2;->showUI(Landroid/view/View;ZZ)V
    invoke-static {v0, v1, v3, v2}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$2400(Lcom/htc/camera/photopattern/PhotoBoothUI2;Landroid/view/View;ZZ)V

    .line 1301
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$12;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$12;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # getter for: Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_ReviewImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$1600(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Landroid/widget/ImageView;

    move-result-object v1

    # invokes: Lcom/htc/camera/photopattern/PhotoBoothUI2;->showUI(Landroid/view/View;ZZ)V
    invoke-static {v0, v1, v3, v3}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$2500(Lcom/htc/camera/photopattern/PhotoBoothUI2;Landroid/view/View;ZZ)V

    .line 1304
    :cond_0
    return-void
.end method
