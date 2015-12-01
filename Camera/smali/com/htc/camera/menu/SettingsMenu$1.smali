.class Lcom/htc/camera/menu/SettingsMenu$1;
.super Ljava/lang/Object;
.source "SettingsMenu.java"

# interfaces
.implements Lcom/htc/camera/base/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/f",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/menu/SettingsMenu;


# direct methods
.method constructor <init>(Lcom/htc/camera/menu/SettingsMenu;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/htc/camera/menu/SettingsMenu$1;->this$0:Lcom/htc/camera/menu/SettingsMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Ljava/lang/Object;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu$1;->this$0:Lcom/htc/camera/menu/SettingsMenu;

    # invokes: Lcom/htc/camera/menu/SettingsMenu;->updateAutoFocusRelatedItem()V
    invoke-static {v0}, Lcom/htc/camera/menu/SettingsMenu;->access$000(Lcom/htc/camera/menu/SettingsMenu;)V

    .line 260
    return-void
.end method
