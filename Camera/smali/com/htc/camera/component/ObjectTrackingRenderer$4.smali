.class Lcom/htc/camera/component/ObjectTrackingRenderer$4;
.super Lcom/htc/camera/trigger/Trigger;
.source "ObjectTrackingRenderer.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ObjectTrackingRenderer;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$4;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$4;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    # invokes: Lcom/htc/camera/component/ObjectTrackingRenderer;->clearObjects()V
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$400(Lcom/htc/camera/component/ObjectTrackingRenderer;)V

    .line 503
    return-void
.end method
