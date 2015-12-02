.class Lcom/htc/camera/io/SDCardUI$9;
.super Ljava/lang/Object;
.source "SDCardUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/io/SDCardUI;

.field final synthetic val$currentSettings:Lcom/htc/camera/CameraSettings;


# direct methods
.method constructor <init>(Lcom/htc/camera/io/SDCardUI;Lcom/htc/camera/CameraSettings;)V
    .locals 0

    .prologue
    .line 560
    iput-object p1, p0, Lcom/htc/camera/io/SDCardUI$9;->this$0:Lcom/htc/camera/io/SDCardUI;

    iput-object p2, p0, Lcom/htc/camera/io/SDCardUI$9;->val$currentSettings:Lcom/htc/camera/CameraSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 564
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI$9;->val$currentSettings:Lcom/htc/camera/CameraSettings;

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_STORAGE_SLOT:Lcom/htc/camera/base/PropertyKey;

    sget-object v2, Lcom/htc/camera/io/StorageSlot;->PHONE_STORAGE:Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 565
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 566
    return-void
.end method
