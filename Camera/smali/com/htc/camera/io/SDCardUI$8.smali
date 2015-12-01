.class Lcom/htc/camera/io/SDCardUI$8;
.super Ljava/lang/Object;
.source "SDCardUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/io/SDCardUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/io/SDCardUI;)V
    .locals 0

    .prologue
    .line 552
    iput-object p1, p0, Lcom/htc/camera/io/SDCardUI$8;->this$0:Lcom/htc/camera/io/SDCardUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 555
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 556
    return-void
.end method
