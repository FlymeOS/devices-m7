.class Lcom/htc/camera/component/QuickTipsUI$3;
.super Ljava/lang/Object;
.source "QuickTipsUI.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/rotate/UIRotation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/QuickTipsUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/QuickTipsUI;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/htc/camera/component/QuickTipsUI$3;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/rotate/UIRotation;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/rotate/UIRotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$3;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    iget-object v1, p0, Lcom/htc/camera/component/QuickTipsUI$3;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    const/16 v2, 0x2711

    const-wide/16 v3, 0x12c

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/QuickTipsUI;->sendMessage(Lcom/htc/camera/component/Component;IJZ)Z

    .line 257
    return-void
.end method
