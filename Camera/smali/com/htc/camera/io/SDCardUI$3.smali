.class Lcom/htc/camera/io/SDCardUI$3;
.super Lcom/htc/camera/base/DynamicPropertyChangedListener;
.source "SDCardUI.java"


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
.field final synthetic this$0:Lcom/htc/camera/io/SDCardUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/io/SDCardUI;Lcom/htc/camera/base/e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/htc/camera/io/SDCardUI$3;->this$0:Lcom/htc/camera/io/SDCardUI;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/base/DynamicPropertyChangedListener;-><init>(Lcom/htc/camera/base/e;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onPropertyChanged(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 1
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
    .line 253
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI$3;->this$0:Lcom/htc/camera/io/SDCardUI;

    # invokes: Lcom/htc/camera/io/SDCardUI;->checkQuality()V
    invoke-static {v0}, Lcom/htc/camera/io/SDCardUI;->access$800(Lcom/htc/camera/io/SDCardUI;)V

    .line 254
    return-void
.end method
