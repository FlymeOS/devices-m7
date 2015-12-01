.class Lcom/htc/camera/component/ComponentBinder$2;
.super Ljava/lang/Object;
.source "ComponentBinder.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ComponentBinder;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ComponentBinder;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/htc/camera/component/ComponentBinder$2;->this$0:Lcom/htc/camera/component/ComponentBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/ComponentBinder$2;->this$0:Lcom/htc/camera/component/ComponentBinder;

    # getter for: Lcom/htc/camera/component/ComponentBinder;->m_TargetComponent:Lcom/htc/camera/component/Component;
    invoke-static {v0}, Lcom/htc/camera/component/ComponentBinder;->access$100(Lcom/htc/camera/component/ComponentBinder;)Lcom/htc/camera/component/Component;

    move-result-object v0

    new-instance v1, Lcom/htc/camera/component/ComponentBinder$2$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/camera/component/ComponentBinder$2$1;-><init>(Lcom/htc/camera/component/ComponentBinder$2;Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/Component;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 84
    return-void
.end method
