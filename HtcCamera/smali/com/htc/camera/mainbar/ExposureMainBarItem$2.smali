.class Lcom/htc/camera/mainbar/ExposureMainBarItem$2;
.super Lcom/htc/camera/base/DynamicPropertyChangedListener;
.source "ExposureMainBarItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/base/DynamicPropertyChangedListener",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/mainbar/ExposureMainBarItem;


# direct methods
.method constructor <init>(Lcom/htc/camera/mainbar/ExposureMainBarItem;Lcom/htc/camera/base/e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$2;->this$0:Lcom/htc/camera/mainbar/ExposureMainBarItem;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/base/DynamicPropertyChangedListener;-><init>(Lcom/htc/camera/base/e;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onPropertyChanged(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$2;->this$0:Lcom/htc/camera/mainbar/ExposureMainBarItem;

    iget-object v0, v0, Lcom/htc/camera/mainbar/ExposureMainBarItem;->iconDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;

    iget-object v2, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$2;->this$0:Lcom/htc/camera/mainbar/ExposureMainBarItem;

    iget-object v1, p2, Lcom/htc/camera/base/PropertyChangeEventArgs;->newValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    # invokes: Lcom/htc/camera/mainbar/ExposureMainBarItem;->mapSettingsExposureToIcon(F)F
    invoke-static {v2, v1}, Lcom/htc/camera/mainbar/ExposureMainBarItem;->access$300(Lcom/htc/camera/mainbar/ExposureMainBarItem;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/mainbar/ExposureMainBarItem$ExposureDrawable;->setExposure(F)V

    .line 146
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$2;->this$0:Lcom/htc/camera/mainbar/ExposureMainBarItem;

    invoke-virtual {v0}, Lcom/htc/camera/mainbar/ExposureMainBarItem;->invalidate()V

    .line 148
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$2;->this$0:Lcom/htc/camera/mainbar/ExposureMainBarItem;

    # getter for: Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_iconMenuItems:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExposureMainBarItem;->access$400(Lcom/htc/camera/mainbar/ExposureMainBarItem;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$2;->this$0:Lcom/htc/camera/mainbar/ExposureMainBarItem;

    # getter for: Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_iconMenuItems:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExposureMainBarItem;->access$400(Lcom/htc/camera/mainbar/ExposureMainBarItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_0

    .line 151
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$2;->this$0:Lcom/htc/camera/mainbar/ExposureMainBarItem;

    # getter for: Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_iconMenuItems:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExposureMainBarItem;->access$400(Lcom/htc/camera/mainbar/ExposureMainBarItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/menu/IconMenuItem;

    iget-object v1, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$2;->this$0:Lcom/htc/camera/mainbar/ExposureMainBarItem;

    # getter for: Lcom/htc/camera/mainbar/ExposureMainBarItem;->m_iconMenuItems:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/camera/mainbar/ExposureMainBarItem;->access$400(Lcom/htc/camera/mainbar/ExposureMainBarItem;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/menu/IconMenuItem;

    invoke-virtual {v1}, Lcom/htc/camera/menu/IconMenuItem;->getTag()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/camera/mainbar/ExposureMainBarItem$2;->this$0:Lcom/htc/camera/mainbar/ExposureMainBarItem;

    iget-object v1, p2, Lcom/htc/camera/base/PropertyChangeEventArgs;->newValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    # invokes: Lcom/htc/camera/mainbar/ExposureMainBarItem;->mapSettingsExposureToIcon(F)F
    invoke-static {v4, v1}, Lcom/htc/camera/mainbar/ExposureMainBarItem;->access$300(Lcom/htc/camera/mainbar/ExposureMainBarItem;F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/menu/IconMenuItem;->setSelected(Z)V

    .line 150
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 153
    :cond_0
    return-void
.end method
