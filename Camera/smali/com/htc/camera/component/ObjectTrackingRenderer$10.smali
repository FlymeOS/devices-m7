.class Lcom/htc/camera/component/ObjectTrackingRenderer$10;
.super Ljava/lang/Object;
.source "ObjectTrackingRenderer.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ObjectTrackingRenderer;)V
    .locals 0

    .prologue
    .line 647
    iput-object p1, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$10;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 1
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
    .line 651
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$10;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    # invokes: Lcom/htc/camera/component/ObjectTrackingRenderer;->clearObjects()V
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$400(Lcom/htc/camera/component/ObjectTrackingRenderer;)V

    .line 652
    return-void
.end method
