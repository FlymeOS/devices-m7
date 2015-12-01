.class Lcom/htc/camera/component/ComponentBinder$5;
.super Ljava/lang/Object;
.source "ComponentBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ComponentBinder;

.field final synthetic val$eventBindingInfo:[Lcom/htc/camera/component/ComponentBinder$BindingInfo;

.field final synthetic val$propertyBindingInfo:[Lcom/htc/camera/component/ComponentBinder$BindingInfo;

.field final synthetic val$sourceComponent:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ComponentBinder;Ljava/lang/Object;[Lcom/htc/camera/component/ComponentBinder$BindingInfo;[Lcom/htc/camera/component/ComponentBinder$BindingInfo;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/htc/camera/component/ComponentBinder$5;->this$0:Lcom/htc/camera/component/ComponentBinder;

    iput-object p2, p0, Lcom/htc/camera/component/ComponentBinder$5;->val$sourceComponent:Ljava/lang/Object;

    iput-object p3, p0, Lcom/htc/camera/component/ComponentBinder$5;->val$eventBindingInfo:[Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    iput-object p4, p0, Lcom/htc/camera/component/ComponentBinder$5;->val$propertyBindingInfo:[Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 331
    iget-object v0, p0, Lcom/htc/camera/component/ComponentBinder$5;->this$0:Lcom/htc/camera/component/ComponentBinder;

    iget-object v1, p0, Lcom/htc/camera/component/ComponentBinder$5;->val$sourceComponent:Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/camera/component/ComponentBinder$5;->val$eventBindingInfo:[Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    iget-object v3, p0, Lcom/htc/camera/component/ComponentBinder$5;->val$propertyBindingInfo:[Lcom/htc/camera/component/ComponentBinder$BindingInfo;

    # invokes: Lcom/htc/camera/component/ComponentBinder;->unbindFromSourceComponent(Ljava/lang/Object;[Lcom/htc/camera/component/ComponentBinder$BindingInfo;[Lcom/htc/camera/component/ComponentBinder$BindingInfo;)V
    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/component/ComponentBinder;->access$400(Lcom/htc/camera/component/ComponentBinder;Ljava/lang/Object;[Lcom/htc/camera/component/ComponentBinder$BindingInfo;[Lcom/htc/camera/component/ComponentBinder$BindingInfo;)V

    .line 332
    return-void
.end method
