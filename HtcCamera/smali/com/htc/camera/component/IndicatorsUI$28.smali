.class Lcom/htc/camera/component/IndicatorsUI$28;
.super Lcom/htc/camera/base/DynamicPropertyChangedListener;
.source "IndicatorsUI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/base/DynamicPropertyChangedListener",
        "<",
        "Lcom/htc/camera/io/StorageSlot;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/IndicatorsUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/IndicatorsUI;Lcom/htc/camera/base/e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 674
    iput-object p1, p0, Lcom/htc/camera/component/IndicatorsUI$28;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/base/DynamicPropertyChangedListener;-><init>(Lcom/htc/camera/base/e;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onPropertyChanged(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Lcom/htc/camera/io/StorageSlot;",
            ">;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<",
            "Lcom/htc/camera/io/StorageSlot;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 678
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$28;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    new-instance v1, Lcom/htc/camera/component/IndicatorsUI$28$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/IndicatorsUI$28$1;-><init>(Lcom/htc/camera/component/IndicatorsUI$28;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/IndicatorsUI;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 687
    return-void
.end method
