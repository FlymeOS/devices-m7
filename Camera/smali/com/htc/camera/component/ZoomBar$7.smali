.class Lcom/htc/camera/component/ZoomBar$7;
.super Ljava/lang/Object;
.source "ZoomBar.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ZoomBar;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ZoomBar;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/htc/camera/component/ZoomBar$7;->this$0:Lcom/htc/camera/component/ZoomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar$7;->this$0:Lcom/htc/camera/component/ZoomBar;

    # invokes: Lcom/htc/camera/component/ZoomBar;->hideZoomBar()V
    invoke-static {v0}, Lcom/htc/camera/component/ZoomBar;->access$500(Lcom/htc/camera/component/ZoomBar;)V

    .line 299
    return-void
.end method
