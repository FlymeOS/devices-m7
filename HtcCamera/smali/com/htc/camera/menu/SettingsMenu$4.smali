.class Lcom/htc/camera/menu/SettingsMenu$4;
.super Ljava/lang/Object;
.source "SettingsMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/menu/SettingsMenu;


# direct methods
.method constructor <init>(Lcom/htc/camera/menu/SettingsMenu;)V
    .locals 0

    .prologue
    .line 822
    iput-object p1, p0, Lcom/htc/camera/menu/SettingsMenu$4;->this$0:Lcom/htc/camera/menu/SettingsMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 825
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 826
    return-void
.end method
