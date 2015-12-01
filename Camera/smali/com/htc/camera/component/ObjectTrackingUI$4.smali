.class Lcom/htc/camera/component/ObjectTrackingUI$4;
.super Ljava/lang/Object;
.source "ObjectTrackingUI.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/AutoFocusMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ObjectTrackingUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ObjectTrackingUI;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/htc/camera/component/ObjectTrackingUI$4;->this$0:Lcom/htc/camera/component/ObjectTrackingUI;

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
            "Lcom/htc/camera/AutoFocusMode;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/AutoFocusMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 177
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/AutoFocusMode;

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->Sensor:Lcom/htc/camera/AutoFocusMode;

    invoke-virtual {v0, v1}, Lcom/htc/camera/AutoFocusMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI$4;->this$0:Lcom/htc/camera/component/ObjectTrackingUI;

    iget-object v0, v0, Lcom/htc/camera/component/ObjectTrackingUI;->m_LastfocusFaceRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI$4;->this$0:Lcom/htc/camera/component/ObjectTrackingUI;

    # getter for: Lcom/htc/camera/component/ObjectTrackingUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingUI;->access$300(Lcom/htc/camera/component/ObjectTrackingUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "focusMode changed to Sensor, reset m_LastfocusFaceRect"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI$4;->this$0:Lcom/htc/camera/component/ObjectTrackingUI;

    iget-object v0, v0, Lcom/htc/camera/component/ObjectTrackingUI;->m_LastfocusFaceRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 184
    :cond_0
    return-void
.end method
