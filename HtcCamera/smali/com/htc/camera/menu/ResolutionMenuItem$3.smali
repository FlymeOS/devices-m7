.class Lcom/htc/camera/menu/ResolutionMenuItem$3;
.super Ljava/lang/Object;
.source "ResolutionMenuItem.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/menu/ResolutionMenuItem;

.field final synthetic val$cameraActivity:Lcom/htc/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/htc/camera/menu/ResolutionMenuItem;Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/htc/camera/menu/ResolutionMenuItem$3;->this$0:Lcom/htc/camera/menu/ResolutionMenuItem;

    iput-object p2, p0, Lcom/htc/camera/menu/ResolutionMenuItem$3;->val$cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/htc/camera/menu/ResolutionMenuItem$3;->val$cameraActivity:Lcom/htc/camera/HTCCamera;

    new-instance v1, Lcom/htc/camera/menu/ResolutionMenuItem$3$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/camera/menu/ResolutionMenuItem$3$1;-><init>(Lcom/htc/camera/menu/ResolutionMenuItem$3;Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 178
    return-void
.end method
