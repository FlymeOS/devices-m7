.class public Lcom/htc/camera/component/PhoneCallUI;
.super Lcom/htc/camera/component/cm;
.source "PhoneCallUI.java"


# instance fields
.field private m_AnswerDialog:Lcom/htc/lib1/cc/widget/HtcAlertDialog;

.field private m_ContactIconDrawable:Lcom/htc/camera/component/PhoneCallUI$ContactIconDrawable;

.field private m_DialogHandle:Lcom/htc/camera/Handle;

.field private m_DialogView:Landroid/view/View;

.field private m_IsPhoneListenStarted:Z

.field private m_incomingNumber:Ljava/lang/String;

.field private m_nCurCallState:I

.field private m_phoneStateListener:Landroid/telephony/PhoneStateListener;

.field private m_supportDualSIM:Z


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 244
    const-string v0, "PhoneCallUI"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/component/cm;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 89
    iput v2, p0, Lcom/htc/camera/component/PhoneCallUI;->m_nCurCallState:I

    .line 91
    iput-boolean v2, p0, Lcom/htc/camera/component/PhoneCallUI;->m_IsPhoneListenStarted:Z

    .line 92
    iput-boolean v2, p0, Lcom/htc/camera/component/PhoneCallUI;->m_supportDualSIM:Z

    .line 94
    new-instance v0, Lcom/htc/camera/component/PhoneCallUI$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/PhoneCallUI$1;-><init>(Lcom/htc/camera/component/PhoneCallUI;)V

    iput-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->m_phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 245
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/PhoneCallUI;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/htc/camera/component/PhoneCallUI;->m_nCurCallState:I

    return v0
.end method

.method static synthetic access$002(Lcom/htc/camera/component/PhoneCallUI;I)I
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/htc/camera/component/PhoneCallUI;->m_nCurCallState:I

    return p1
.end method

.method static synthetic access$100(Lcom/htc/camera/component/PhoneCallUI;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/htc/camera/component/PhoneCallUI;->closePopupObjects()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/camera/component/PhoneCallUI;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/htc/camera/component/PhoneCallUI;->m_IsPhoneListenStarted:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/htc/camera/component/PhoneCallUI;Z)Z
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/htc/camera/component/PhoneCallUI;->m_IsPhoneListenStarted:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/htc/camera/component/PhoneCallUI;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/htc/camera/component/PhoneCallUI;->m_supportDualSIM:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/camera/component/PhoneCallUI;)Landroid/telephony/PhoneStateListener;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->m_phoneStateListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/camera/component/PhoneCallUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/htc/camera/component/PhoneCallUI;->m_incomingNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/camera/component/PhoneCallUI;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/htc/camera/component/PhoneCallUI;->answerCall()V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/camera/component/PhoneCallUI;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/htc/camera/component/PhoneCallUI;->endCall()V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/camera/component/PhoneCallUI;)Lcom/htc/lib1/cc/widget/HtcAlertDialog;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->m_AnswerDialog:Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/camera/component/PhoneCallUI;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/htc/camera/component/PhoneCallUI;->getCallerContentBackgroundWorker(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private answerCall()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 565
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;

    const-string v1, "answerCall"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/camera/component/PhoneCallUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 568
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 569
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 570
    const-string v2, "getITelephony"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 571
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 572
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 573
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 574
    const-string v2, "answerRingingCall"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 575
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 576
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 579
    :try_start_1
    invoke-static {}, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->getDefault()Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->showIncallScreen()V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 594
    :goto_0
    return-void

    .line 581
    :catch_0
    move-exception v0

    .line 582
    :try_start_2
    iget-object v1, p0, Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NoSuchMethodException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 590
    :catch_1
    move-exception v0

    .line 591
    iget-object v1, p0, Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;

    const-string v2, "RemoteException from getPhoneInterface()"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 587
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;

    const-string v1, "answerCall but not rinning"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method private closePopupObjects()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->m_DialogHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_0

    .line 390
    :goto_0
    return-void

    .line 386
    :cond_0
    const-class v0, Lcom/htc/camera/IRotateDialogManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/PhoneCallUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IRotateDialogManager;

    .line 387
    if-eqz v0, :cond_1

    .line 388
    iget-object v1, p0, Lcom/htc/camera/component/PhoneCallUI;->m_DialogHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IRotateDialogManager;->hideDialog(Lcom/htc/camera/Handle;)V

    .line 389
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->m_DialogHandle:Lcom/htc/camera/Handle;

    goto :goto_0
.end method

.method private endCall()V
    .locals 4

    .prologue
    .line 527
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;

    const-string v1, "endCall"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/camera/component/PhoneCallUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 545
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 546
    const-string v2, "getITelephony"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 547
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 548
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 549
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 550
    const-string v2, "endCall"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 551
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 552
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    :goto_0
    return-void

    .line 554
    :catch_0
    move-exception v0

    .line 555
    iget-object v1, p0, Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;

    const-string v2, "RemoteException from getPhoneInterface()"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getCallerContentBackgroundWorker(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 597
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;

    const-string v1, "PhoneCallPopUpBackgroundWorker()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    new-instance v1, Lcom/htc/camera/component/PhoneCallUI$GetCallerContentThread;

    invoke-direct {v1, p0, p1}, Lcom/htc/camera/component/PhoneCallUI$GetCallerContentThread;-><init>(Lcom/htc/camera/component/PhoneCallUI;Ljava/lang/String;)V

    .line 601
    const-class v0, Lcom/htc/camera/ag;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/PhoneCallUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ag;

    .line 602
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/htc/camera/ag;->enqueueTask(Ljava/lang/Runnable;)Lcom/htc/camera/Handle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 603
    :cond_0
    invoke-virtual {v1}, Lcom/htc/camera/component/PhoneCallUI$GetCallerContentThread;->run()V

    .line 604
    :cond_1
    return-void
.end method

.method private setupPropertyChangedCallbacks()V
    .locals 3

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/htc/camera/component/PhoneCallUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 294
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/PhoneCallUI$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/PhoneCallUI$2;-><init>(Lcom/htc/camera/component/PhoneCallUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 347
    sget-object v1, Lcom/htc/camera/HTCCamera;->EVENT_PAUSING:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/component/PhoneCallUI$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/PhoneCallUI$3;-><init>(Lcom/htc/camera/component/PhoneCallUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 376
    return-void
.end method

.method private updateContactInDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 607
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->m_incomingNumber:Ljava/lang/String;

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/htc/camera/component/PhoneCallUI;->m_IsPhoneListenStarted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/camera/component/PhoneCallUI;->m_nCurCallState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore popup, getNumber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",m_incomingNumber"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/PhoneCallUI;->m_incomingNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    :goto_0
    return-void

    .line 614
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->m_DialogView:Landroid/view/View;

    const v1, 0x7f0e01d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 615
    if-eqz p4, :cond_5

    .line 616
    new-instance v1, Lcom/htc/camera/component/PhoneCallUI$ContactIconDrawable;

    invoke-virtual {p0}, Lcom/htc/camera/component/PhoneCallUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, p0, v2, p4}, Lcom/htc/camera/component/PhoneCallUI$ContactIconDrawable;-><init>(Lcom/htc/camera/component/PhoneCallUI;Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/htc/camera/component/PhoneCallUI;->m_ContactIconDrawable:Lcom/htc/camera/component/PhoneCallUI$ContactIconDrawable;

    .line 617
    iget-object v1, p0, Lcom/htc/camera/component/PhoneCallUI;->m_ContactIconDrawable:Lcom/htc/camera/component/PhoneCallUI$ContactIconDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 621
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->m_DialogView:Landroid/view/View;

    const v1, 0x7f0e01d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 622
    iget-object v1, p0, Lcom/htc/camera/component/PhoneCallUI;->m_DialogView:Landroid/view/View;

    const v2, 0x7f0e01d5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 624
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 625
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/component/PhoneCallUI;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080414

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 627
    :cond_3
    if-eqz p3, :cond_4

    .line 628
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 629
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 630
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateContactInDialog contentName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",displayNumber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 619
    :cond_5
    const v1, 0x7f02021c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 0

    .prologue
    .line 426
    invoke-super {p0}, Lcom/htc/camera/component/cm;->deinitializeOverride()V

    .line 427
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 399
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 406
    invoke-super {p0, p1}, Lcom/htc/camera/component/cm;->handleMessage(Landroid/os/Message;)V

    .line 409
    :goto_0
    return-void

    .line 402
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 403
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v3, v0, v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v0, v0, v4

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/htc/camera/component/PhoneCallUI;->updateContactInDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 399
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 4

    .prologue
    .line 257
    invoke-super {p0}, Lcom/htc/camera/component/cm;->initializeOverride()V

    .line 259
    invoke-virtual {p0}, Lcom/htc/camera/component/PhoneCallUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "Camera_Application_hashCode"

    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 263
    :try_start_0
    invoke-static {}, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/PhoneCallUI;->m_supportDualSIM:Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/htc/camera/component/PhoneCallUI;->setupPropertyChangedCallbacks()V

    .line 274
    return-void

    .line 268
    :catch_0
    move-exception v0

    .line 269
    iget-object v1, p0, Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NoSuchMethodException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public phoneCallPopUp()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 436
    iget-boolean v0, p0, Lcom/htc/camera/component/PhoneCallUI;->m_IsPhoneListenStarted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/camera/component/PhoneCallUI;->m_nCurCallState:I

    if-eq v0, v5, :cond_1

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore popup,m_incomingNumber"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/PhoneCallUI;->m_incomingNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    :goto_0
    return-void

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phoneCallPopUp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/PhoneCallUI;->m_incomingNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v2, p0, Lcom/htc/camera/component/PhoneCallUI;->m_incomingNumber:Ljava/lang/String;

    .line 446
    invoke-virtual {p0}, Lcom/htc/camera/component/PhoneCallUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 447
    const v1, 0x7f030075

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->m_DialogView:Landroid/view/View;

    .line 449
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->m_DialogView:Landroid/view/View;

    const v1, 0x7f0e01d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 450
    const v1, 0x7f02021c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 452
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->m_DialogView:Landroid/view/View;

    const v1, 0x7f0e01d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 453
    iget-object v1, p0, Lcom/htc/camera/component/PhoneCallUI;->m_DialogView:Landroid/view/View;

    const v3, 0x7f0e01d5

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 455
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 456
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/component/PhoneCallUI;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080414

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 458
    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 462
    new-instance v0, Lcom/htc/camera/component/PhoneCallUI$4;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/PhoneCallUI$4;-><init>(Lcom/htc/camera/component/PhoneCallUI;)V

    .line 472
    new-instance v1, Lcom/htc/camera/component/PhoneCallUI$5;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/PhoneCallUI$5;-><init>(Lcom/htc/camera/component/PhoneCallUI;)V

    .line 481
    new-instance v2, Lcom/htc/camera/component/PhoneCallUI$6;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/PhoneCallUI$6;-><init>(Lcom/htc/camera/component/PhoneCallUI;)V

    .line 505
    new-instance v3, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/camera/component/PhoneCallUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0803e9

    invoke-virtual {v3, v4}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/camera/component/PhoneCallUI;->m_DialogView:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0803ea

    invoke-virtual {v3, v4, v0}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0803eb

    invoke-virtual {v0, v3, v1}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->m_AnswerDialog:Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    .line 511
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->m_AnswerDialog:Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/HtcAlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 514
    const-class v0, Lcom/htc/camera/IRotateDialogManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/PhoneCallUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IRotateDialogManager;

    .line 515
    if-eqz v0, :cond_4

    .line 516
    iget-object v1, p0, Lcom/htc/camera/component/PhoneCallUI;->m_AnswerDialog:Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    invoke-virtual {v0, v1, v6, v5}, Lcom/htc/camera/IRotateDialogManager;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;Z)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->m_DialogHandle:Lcom/htc/camera/Handle;

    goto/16 :goto_0

    .line 518
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;

    const-string v1, "onDeleteClicked() -  Cannot find IRotateDialogManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
