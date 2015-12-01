.class Lcom/htc/camera/component/SettingsDialog;
.super Lcom/htc/camera/component/CameraComponent;
.source "SettingsDialog.java"

# interfaces
.implements Lcom/htc/camera/ui/b;


# static fields
.field static NAME:Ljava/lang/String;


# instance fields
.field private m_NeedToShowGlobalDialog:Z

.field private m_SettingsDialog:Lcom/htc/lib1/cc/widget/HtcAlertDialog;

.field private m_SettingsDialogHandle:Lcom/htc/camera/Handle;

.field private m_SettingsMenu:Lcom/htc/camera/menu/SettingsMenu;

.field private final settingsPanelState:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/UIState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "Settings Dialog"

    sput-object v0, Lcom/htc/camera/component/SettingsDialog;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 4

    .prologue
    .line 58
    sget-object v0, Lcom/htc/camera/component/SettingsDialog;->NAME:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/htc/camera/component/CameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;)V

    .line 61
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "SettingsMainBarItem.SettingsPanelState"

    const/4 v2, 0x3

    sget-object v3, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/component/SettingsDialog;->settingsPanelState:Lcom/htc/camera/property/Property;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/SettingsDialog;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/camera/component/SettingsDialog;->m_SettingsDialogHandle:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/camera/component/SettingsDialog;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/htc/camera/component/SettingsDialog;->m_SettingsDialogHandle:Lcom/htc/camera/Handle;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/camera/component/SettingsDialog;Lcom/htc/camera/Handle;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/htc/camera/component/SettingsDialog;->closeSettingsPanel(Lcom/htc/camera/Handle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/component/SettingsDialog;Lcom/htc/camera/menu/MenuItem;II)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/camera/component/SettingsDialog;->onMenuItemClicked(Lcom/htc/camera/menu/MenuItem;II)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/camera/component/SettingsDialog;)Lcom/htc/lib1/cc/widget/HtcAlertDialog;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/camera/component/SettingsDialog;->m_SettingsDialog:Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/camera/component/SettingsDialog;Lcom/htc/lib1/cc/widget/HtcAlertDialog;)Lcom/htc/lib1/cc/widget/HtcAlertDialog;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/htc/camera/component/SettingsDialog;->m_SettingsDialog:Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/camera/component/SettingsDialog;)Lcom/htc/camera/property/Property;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/camera/component/SettingsDialog;->settingsPanelState:Lcom/htc/camera/property/Property;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/component/SettingsDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/camera/component/SettingsDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/camera/component/SettingsDialog;)Lcom/htc/camera/menu/SettingsMenu;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/camera/component/SettingsDialog;->m_SettingsMenu:Lcom/htc/camera/menu/SettingsMenu;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/camera/component/SettingsDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/camera/component/SettingsDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/camera/component/SettingsDialog;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/htc/camera/component/SettingsDialog;->m_NeedToShowGlobalDialog:Z

    return v0
.end method

.method static synthetic access$802(Lcom/htc/camera/component/SettingsDialog;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/htc/camera/component/SettingsDialog;->m_NeedToShowGlobalDialog:Z

    return p1
.end method

.method static synthetic access$900(Lcom/htc/camera/component/SettingsDialog;Z)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/htc/camera/component/SettingsDialog;->showSettingsPanel(Z)V

    return-void
.end method

.method private closeSettingsPanel(Lcom/htc/camera/Handle;)V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/htc/camera/component/SettingsDialog;->m_SettingsDialogHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/htc/camera/component/SettingsDialog;->settingsPanelState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/UIState;->Closing:Lcom/htc/camera/UIState;

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/SettingsDialog;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/IRotateDialogManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IRotateDialogManager;

    .line 151
    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {v0, p1}, Lcom/htc/camera/IRotateDialogManager;->hideDialog(Lcom/htc/camera/Handle;)V

    .line 153
    :cond_1
    return-void
.end method

.method private onMenuItemClicked(Lcom/htc/camera/menu/MenuItem;II)V
    .locals 1

    .prologue
    .line 161
    sparse-switch p3, :sswitch_data_0

    .line 173
    :goto_0
    instance-of v0, p1, Lcom/htc/camera/menu/CheckBoxMenuItem;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/htc/camera/menu/MenuItem;->getParent()Lcom/htc/camera/menu/MenuItem;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/camera/menu/WhiteBalanceMenuItem;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/htc/camera/menu/MenuItem;->getParent()Lcom/htc/camera/menu/MenuItem;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/camera/menu/CameraIsoMenuItem;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/htc/camera/menu/MenuItem;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/htc/camera/component/SettingsDialog;->m_SettingsDialogHandle:Lcom/htc/camera/Handle;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/SettingsDialog;->closeSettingsPanel(Lcom/htc/camera/Handle;)V

    .line 178
    :cond_0
    :goto_1
    return-void

    .line 164
    :sswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/SettingsDialog;->m_NeedToShowGlobalDialog:Z

    goto :goto_0

    .line 168
    :sswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/SettingsDialog;->m_SettingsDialogHandle:Lcom/htc/camera/Handle;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/SettingsDialog;->closeSettingsPanel(Lcom/htc/camera/Handle;)V

    goto :goto_1

    .line 161
    nop

    :sswitch_data_0
    .sparse-switch
        0x34 -> :sswitch_1
        0x46 -> :sswitch_0
    .end sparse-switch
.end method

.method private showSettingsPanel(Z)V
    .locals 7

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/htc/camera/component/SettingsDialog;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->isIdleOrPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/SettingsDialog;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->cancelAutoFocus()Z

    .line 193
    invoke-virtual {p0}, Lcom/htc/camera/component/SettingsDialog;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isCaptureUIBlocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/htc/camera/component/SettingsDialog;->m_SettingsDialogHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/htc/camera/component/SettingsDialog;->m_SettingsMenu:Lcom/htc/camera/menu/SettingsMenu;

    if-nez v0, :cond_2

    .line 203
    new-instance v0, Lcom/htc/camera/menu/SettingsMenu;

    invoke-virtual {p0}, Lcom/htc/camera/component/SettingsDialog;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/menu/SettingsMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/htc/camera/component/SettingsDialog;->m_SettingsMenu:Lcom/htc/camera/menu/SettingsMenu;

    .line 204
    iget-object v0, p0, Lcom/htc/camera/component/SettingsDialog;->m_SettingsMenu:Lcom/htc/camera/menu/SettingsMenu;

    new-instance v1, Lcom/htc/camera/component/SettingsDialog$7;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/SettingsDialog$7;-><init>(Lcom/htc/camera/component/SettingsDialog;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/menu/SettingsMenu;->setOnMenuItemClickedListener(Lcom/htc/camera/menu/e;)V

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/SettingsDialog;->m_SettingsMenu:Lcom/htc/camera/menu/SettingsMenu;

    invoke-virtual {v0, p1}, Lcom/htc/camera/menu/SettingsMenu;->initializeMenuItems(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/htc/camera/component/SettingsDialog;->m_SettingsMenu:Lcom/htc/camera/menu/SettingsMenu;

    invoke-virtual {v0}, Lcom/htc/camera/menu/SettingsMenu;->updateItemContents()V

    .line 217
    iget-object v0, p0, Lcom/htc/camera/component/SettingsDialog;->m_SettingsMenu:Lcom/htc/camera/menu/SettingsMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/camera/menu/SettingsMenu;->setSelection(I)V

    .line 218
    iget-object v0, p0, Lcom/htc/camera/component/SettingsDialog;->m_SettingsMenu:Lcom/htc/camera/menu/SettingsMenu;

    invoke-virtual {v0}, Lcom/htc/camera/menu/SettingsMenu;->collapseAllItems()V

    .line 221
    new-instance v0, Lcom/htc/camera/component/SettingsDialog$8;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/SettingsDialog$8;-><init>(Lcom/htc/camera/component/SettingsDialog;)V

    .line 238
    new-instance v1, Lcom/htc/camera/component/SettingsDialog$9;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/SettingsDialog$9;-><init>(Lcom/htc/camera/component/SettingsDialog;)V

    .line 262
    iget-object v2, p0, Lcom/htc/camera/component/SettingsDialog;->m_SettingsDialog:Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    if-nez v2, :cond_3

    .line 263
    new-instance v2, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/camera/component/SettingsDialog;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f080202

    invoke-virtual {v2, v3}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/component/SettingsDialog;->m_SettingsMenu:Lcom/htc/camera/menu/SettingsMenu;

    invoke-virtual {v2, v3}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/camera/component/SettingsDialog;->m_SettingsDialog:Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    .line 268
    :cond_3
    if-eqz p1, :cond_4

    .line 269
    iget-object v2, p0, Lcom/htc/camera/component/SettingsDialog;->m_SettingsDialog:Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    const v3, 0x7f080203

    invoke-virtual {v2, v3}, Lcom/htc/lib1/cc/widget/HtcAlertDialog;->setTitle(I)V

    .line 271
    :cond_4
    iget-object v2, p0, Lcom/htc/camera/component/SettingsDialog;->m_SettingsDialog:Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    invoke-virtual {v2, v0}, Lcom/htc/lib1/cc/widget/HtcAlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 274
    invoke-virtual {p0}, Lcom/htc/camera/component/SettingsDialog;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v2, Lcom/htc/camera/IRotateDialogManager;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IRotateDialogManager;

    .line 275
    if-eqz v0, :cond_5

    .line 276
    iget-object v2, p0, Lcom/htc/camera/component/SettingsDialog;->m_SettingsDialog:Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    const/4 v3, 0x1

    sget v4, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    invoke-virtual {p0}, Lcom/htc/camera/component/SettingsDialog;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a016a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/htc/camera/IRotateDialogManager;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;ZI)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/SettingsDialog;->m_SettingsDialogHandle:Lcom/htc/camera/Handle;

    .line 280
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/component/SettingsDialog;->settingsPanelState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/UIState;->Opening:Lcom/htc/camera/UIState;

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 278
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/component/SettingsDialog;->TAG:Ljava/lang/String;

    const-string v1, "onDeleteClicked() -  Cannot find IRotateDialogManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 67
    invoke-super {p0}, Lcom/htc/camera/component/CameraComponent;->initializeOverride()V

    .line 69
    invoke-virtual {p0}, Lcom/htc/camera/component/SettingsDialog;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/htc/camera/component/SettingsDialog;->settingsPanelState:Lcom/htc/camera/property/Property;

    iget-object v2, v0, Lcom/htc/camera/HTCCamera;->settingsMenuState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->bindProperties(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/Property;)V

    .line 73
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/SettingsDialog$1;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/SettingsDialog$1;-><init>(Lcom/htc/camera/component/SettingsDialog;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 82
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/SettingsDialog$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/SettingsDialog$2;-><init>(Lcom/htc/camera/component/SettingsDialog;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 91
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/SettingsDialog$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/SettingsDialog$3;-><init>(Lcom/htc/camera/component/SettingsDialog;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 100
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/SettingsDialog$4;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/SettingsDialog$4;-><init>(Lcom/htc/camera/component/SettingsDialog;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 111
    sget-object v1, Lcom/htc/camera/HTCCamera;->EVENT_DEACTIVATED:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/component/SettingsDialog$5;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/SettingsDialog$5;-><init>(Lcom/htc/camera/component/SettingsDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 119
    return-void
.end method

.method public showSettingsDialog(I)Lcom/htc/camera/CloseableHandle;
    .locals 3

    .prologue
    .line 124
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/htc/camera/component/SettingsDialog;->showSettingsPanel(Z)V

    .line 126
    iget-object v0, p0, Lcom/htc/camera/component/SettingsDialog;->m_SettingsDialogHandle:Lcom/htc/camera/Handle;

    .line 127
    new-instance v1, Lcom/htc/camera/component/SettingsDialog$6;

    const-string v2, "Show Settings Dialog"

    invoke-direct {v1, p0, v2, v0}, Lcom/htc/camera/component/SettingsDialog$6;-><init>(Lcom/htc/camera/component/SettingsDialog;Ljava/lang/String;Lcom/htc/camera/Handle;)V

    return-object v1

    .line 124
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
