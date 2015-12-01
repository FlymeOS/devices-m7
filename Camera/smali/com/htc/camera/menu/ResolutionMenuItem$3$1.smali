.class Lcom/htc/camera/menu/ResolutionMenuItem$3$1;
.super Ljava/lang/Object;
.source "ResolutionMenuItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/htc/camera/menu/ResolutionMenuItem$3;

.field final synthetic val$e:Lcom/htc/camera/property/PropertyChangedEventArgs;

.field final synthetic val$property:Lcom/htc/camera/property/Property;


# direct methods
.method constructor <init>(Lcom/htc/camera/menu/ResolutionMenuItem$3;Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/htc/camera/menu/ResolutionMenuItem$3$1;->this$1:Lcom/htc/camera/menu/ResolutionMenuItem$3;

    iput-object p2, p0, Lcom/htc/camera/menu/ResolutionMenuItem$3$1;->val$property:Lcom/htc/camera/property/Property;

    iput-object p3, p0, Lcom/htc/camera/menu/ResolutionMenuItem$3$1;->val$e:Lcom/htc/camera/property/PropertyChangedEventArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/camera/menu/ResolutionMenuItem$3$1;->this$1:Lcom/htc/camera/menu/ResolutionMenuItem$3;

    iget-object v0, v0, Lcom/htc/camera/menu/ResolutionMenuItem$3;->this$0:Lcom/htc/camera/menu/ResolutionMenuItem;

    iget-object v1, p0, Lcom/htc/camera/menu/ResolutionMenuItem$3$1;->val$property:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/menu/ResolutionMenuItem$3$1;->val$e:Lcom/htc/camera/property/PropertyChangedEventArgs;

    # invokes: Lcom/htc/camera/menu/ResolutionMenuItem;->onCameraThreadPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    invoke-static {v0, v1, v2}, Lcom/htc/camera/menu/ResolutionMenuItem;->access$200(Lcom/htc/camera/menu/ResolutionMenuItem;Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V

    .line 176
    return-void
.end method
