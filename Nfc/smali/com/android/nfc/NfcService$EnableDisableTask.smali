.class Lcom/android/nfc/NfcService$EnableDisableTask;
.super Landroid/os/AsyncTask;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnableDisableTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0

    .prologue
    .line 1392
    iput-object p1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method checkSecureElementConfuration()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 1540
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/nfc/DeviceHost;->doGetSecureElementList()[I

    move-result-object v1

    .line 1543
    .local v1, "Se_list":[I
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/nfc/DeviceHost;->GetDefaultSE()I

    move-result v0

    .line 1544
    .local v0, "Se_Num":I
    if-eqz v0, :cond_3

    .line 1546
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->SECURE_ELEMENT_ON_DEFAULT:Z
    invoke-static {v5, v9}, Lcom/android/nfc/NfcService;->access$502(Lcom/android/nfc/NfcService;Z)Z

    .line 1547
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->SECURE_ELEMENT_ID_DEFAULT:I
    invoke-static {v5, v0}, Lcom/android/nfc/NfcService;->access$602(Lcom/android/nfc/NfcService;I)I

    .line 1556
    :cond_0
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v6, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v6}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "secure_element_on"

    iget-object v8, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->SECURE_ELEMENT_ON_DEFAULT:Z
    invoke-static {v8}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Z

    move-result v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    # setter for: Lcom/android/nfc/NfcService;->mNfcSecureElementState:Z
    invoke-static {v5, v6}, Lcom/android/nfc/NfcService;->access$702(Lcom/android/nfc/NfcService;Z)Z

    .line 1559
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcSecureElementState:Z
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1560
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "secure_element_id"

    iget-object v7, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->SECURE_ELEMENT_ID_DEFAULT:I
    invoke-static {v7}, Lcom/android/nfc/NfcService;->access$600(Lcom/android/nfc/NfcService;)I

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 1563
    .local v4, "secureElementId":I
    if-eqz v1, :cond_2

    .line 1564
    const-string v5, "NfcService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SE number: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", default SE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    const/4 v5, 0x3

    if-eq v4, v5, :cond_8

    .line 1575
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v5

    invoke-interface {v5, v10}, Lcom/android/nfc/DeviceHost;->doDeselectSecureElement(I)V

    .line 1576
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v5

    invoke-interface {v5, v9}, Lcom/android/nfc/DeviceHost;->doDeselectSecureElement(I)V

    .line 1578
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_2

    .line 1580
    aget v5, v1, v3

    if-ne v5, v4, :cond_7

    .line 1581
    if-ne v4, v9, :cond_4

    .line 1582
    array-length v5, v1

    if-le v5, v9, :cond_1

    .line 1583
    sget-boolean v5, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v5, :cond_1

    .line 1584
    const-string v5, "NfcService"

    const-string v6, "Deselect UICC"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    :cond_1
    const-string v5, "NfcService"

    const-string v6, "Select SMX"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/android/nfc/DeviceHost;->doSelectSecureElement(I)V

    .line 1589
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->mSelectedSeId:I
    invoke-static {v5, v4}, Lcom/android/nfc/NfcService;->access$802(Lcom/android/nfc/NfcService;I)I

    .line 1639
    .end local v3    # "i":I
    .end local v4    # "secureElementId":I
    :cond_2
    :goto_1
    return-void

    .line 1549
    :cond_3
    if-eqz v1, :cond_0

    .line 1550
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    array-length v5, v1

    if-ge v3, v5, :cond_0

    .line 1551
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v5

    aget v6, v1, v3

    invoke-interface {v5, v6}, Lcom/android/nfc/DeviceHost;->doDeselectSecureElement(I)V

    .line 1550
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1591
    .restart local v4    # "secureElementId":I
    :cond_4
    if-ne v4, v10, :cond_6

    .line 1592
    array-length v5, v1

    if-le v5, v9, :cond_5

    .line 1593
    sget-boolean v5, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v5, :cond_5

    .line 1594
    const-string v5, "NfcService"

    const-string v6, "Deselect SMX"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    :cond_5
    const-string v5, "NfcService"

    const-string v6, "Select UICC"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/android/nfc/DeviceHost;->doSelectSecureElement(I)V

    .line 1599
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->mSelectedSeId:I
    invoke-static {v5, v4}, Lcom/android/nfc/NfcService;->access$802(Lcom/android/nfc/NfcService;I)I

    goto :goto_1

    .line 1601
    :cond_6
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->SECURE_ELEMENT_ID_DEFAULT:I
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$600(Lcom/android/nfc/NfcService;)I

    move-result v5

    if-ne v4, v5, :cond_7

    .line 1602
    array-length v5, v1

    if-le v5, v9, :cond_7

    .line 1603
    sget-boolean v5, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v5, :cond_7

    .line 1604
    const-string v5, "NfcService"

    const-string v6, "UICC deselected by default"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1611
    .end local v3    # "i":I
    :cond_8
    sget-boolean v5, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v5, :cond_9

    .line 1612
    const-string v5, "NfcService"

    const-string v6, "Select ALL_SE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    :cond_9
    array-length v5, v1

    if-le v5, v9, :cond_2

    .line 1617
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    array-length v5, v1

    if-ge v3, v5, :cond_a

    .line 1618
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v5

    aget v6, v1, v3

    invoke-interface {v5, v6}, Lcom/android/nfc/DeviceHost;->doSelectSecureElement(I)V

    .line 1621
    const-wide/16 v6, 0xc8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1617
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1622
    :catch_0
    move-exception v2

    .line 1623
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 1626
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_a
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->mSelectedSeId:I
    invoke-static {v5, v4}, Lcom/android/nfc/NfcService;->access$802(Lcom/android/nfc/NfcService;I)I

    goto/16 :goto_1

    .line 1631
    .end local v3    # "i":I
    .end local v4    # "secureElementId":I
    :cond_b
    if-eqz v1, :cond_2

    array-length v5, v1

    if-lez v5, :cond_2

    .line 1632
    sget-boolean v5, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v5, :cond_c

    .line 1633
    const-string v5, "NfcService"

    const-string v6, "UICC/eSE deselected by default"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    :cond_c
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v5

    invoke-interface {v5, v10}, Lcom/android/nfc/DeviceHost;->doDeselectSecureElement(I)V

    .line 1636
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v5

    invoke-interface {v5, v9}, Lcom/android/nfc/DeviceHost;->doDeselectSecureElement(I)V

    goto/16 :goto_1
.end method

.method disableInternal()Z
    .locals 10

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 1746
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 1824
    :goto_0
    return v0

    .line 1750
    :cond_0
    const-string v3, "NfcService"

    const-string v5, "Disabling NFC"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/nfc/NfcService$EnableDisableTask;->updateState(I)V

    .line 1752
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$1300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/android/nfc/NfcService$NfcServiceHandler;->removeMessages(I)V

    .line 1753
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$1300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v3

    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Lcom/android/nfc/NfcService$NfcServiceHandler;->removeMessages(I)V

    .line 1754
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$1300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v3

    const/16 v5, 0xd4

    invoke-virtual {v3, v5}, Lcom/android/nfc/NfcService$NfcServiceHandler;->removeMessages(I)V

    .line 1755
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$1300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v3

    const/16 v5, 0xcb

    invoke-virtual {v3, v5}, Lcom/android/nfc/NfcService$NfcServiceHandler;->removeMessages(I)V

    .line 1756
    const-string v3, "NfcService"

    const-string v5, "About to disable NFC, clear msgs."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    new-instance v2, Lcom/android/nfc/NfcService$WatchDogThread;

    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    const-string v5, "disableInternal"

    const/16 v6, 0x2710

    invoke-direct {v2, v3, v5, v6}, Lcom/android/nfc/NfcService$WatchDogThread;-><init>(Lcom/android/nfc/NfcService;Ljava/lang/String;I)V

    .line 1763
    .local v2, "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    invoke-virtual {v2}, Lcom/android/nfc/NfcService$WatchDogThread;->start()V

    .line 1765
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v3, v3, Lcom/android/nfc/NfcService;->mPowerShutDown:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mEeRoutingState:I
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$1400(Lcom/android/nfc/NfcService;)I

    move-result v3

    if-eq v3, v8, :cond_1

    invoke-static {}, Lcom/android/nfc/HtcUtils;->isNxpCodebase()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1767
    const-string v3, "NfcService"

    const-string v5, "disableInternal, HCE OFF..."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3, v0, v0}, Lcom/android/nfc/NfcService;->computeEmulationParameters(ZI)V

    .line 1771
    :cond_1
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v3, v3, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v3, :cond_2

    .line 1772
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onNfcDisabled()V

    .line 1775
    :cond_2
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v3, v7, v7}, Lcom/android/nfc/P2pLinkManager;->enableDisable(ZZ)V

    .line 1783
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1785
    .local v1, "startTime":Ljava/lang/Long;
    :cond_3
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v5

    .line 1786
    :try_start_0
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$1500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;

    move-result-object v3

    if-nez v3, :cond_6

    .line 1787
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1796
    :goto_1
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v5

    .line 1797
    :try_start_1
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$1500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1799
    :try_start_2
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    const/4 v6, -0x1

    iget-object v7, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;
    invoke-static {v7}, Lcom/android/nfc/NfcService;->access$1500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;

    move-result-object v7

    iget-object v7, v7, Lcom/android/nfc/NfcService$OpenSecureElement;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v6, v7}, Lcom/android/nfc/NfcService;->_nfcEeClose(ILandroid/os/IBinder;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1802
    :cond_4
    :goto_2
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1808
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3}, Lcom/android/nfc/NfcService;->maybeDisconnectTarget()V

    .line 1810
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v5

    move-object v3, v4

    check-cast v3, [[Ljava/lang/String;

    invoke-virtual {v5, v4, v4, v3}, Lcom/android/nfc/NfcDispatcher;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    .line 1812
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost;->deinitialize()Z

    move-result v0

    .line 1813
    .local v0, "result":Z
    sget-boolean v3, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v3, :cond_5

    const-string v3, "NfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDeviceHost.deinitialize() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    :cond_5
    invoke-virtual {v2}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    .line 1817
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v4

    .line 1818
    :try_start_4
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {}, Lcom/android/nfc/NfcDiscoveryParameters;->getNfcOffParameters()Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v5

    iput-object v5, v3, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    .line 1819
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/nfc/NfcService$EnableDisableTask;->updateState(I)V

    .line 1820
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1822
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3}, Lcom/android/nfc/NfcService;->releaseSoundPool()V

    goto/16 :goto_0

    .line 1788
    .end local v0    # "result":Z
    :cond_6
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1790
    const-wide/16 v6, 0x64

    :try_start_6
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1794
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1388

    cmp-long v3, v6, v8

    if-ltz v3, :cond_3

    goto :goto_1

    .line 1788
    :catchall_0
    move-exception v3

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v3

    .line 1802
    :catchall_1
    move-exception v3

    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v3

    .line 1820
    .restart local v0    # "result":Z
    :catchall_2
    move-exception v3

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v3

    .line 1791
    .end local v0    # "result":Z
    :catch_0
    move-exception v3

    goto :goto_3

    .line 1800
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1392
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/NfcService$EnableDisableTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1396
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1411
    :pswitch_0
    invoke-static {v8}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1413
    aget-object v3, p1, v8

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 1506
    :cond_0
    :goto_0
    :pswitch_1
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1507
    :goto_1
    return-object v10

    .line 1399
    :pswitch_2
    const-string v3, "NfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Processing EnableDisable task "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from bad state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mState:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1415
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->enableInternal()Z

    goto :goto_0

    .line 1418
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->disableInternal()Z

    goto :goto_0

    .line 1421
    :pswitch_5
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "first_boot"

    invoke-interface {v3, v4, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1422
    .local v1, "firstBoot":Z
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3}, Lcom/android/nfc/NfcService;->isAirplaneModeOn()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1423
    sget-boolean v3, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "NfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TASK_BOOT: timeout of delay NFC enabling: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v5, v5, Lcom/android/nfc/NfcService;->mBootDelay:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " msec!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    :cond_1
    if-eqz v1, :cond_2

    .line 1425
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v4, v3, Lcom/android/nfc/NfcService;->mBootDelay:I

    shl-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/nfc/NfcService;->mBootDelay:I

    .line 1428
    :cond_2
    const/4 v2, 0x1

    .line 1429
    .local v2, "showlog":Z
    :goto_2
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v3, v3, Lcom/android/nfc/NfcService;->mBootDelay:I

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-gez v3, :cond_8

    .line 1430
    if-eqz v2, :cond_3

    .line 1431
    const/4 v2, 0x0

    .line 1432
    const-string v3, "NfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uptime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " need delay!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    :cond_3
    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1437
    :catch_0
    move-exception v3

    .line 1439
    .end local v2    # "showlog":Z
    :cond_4
    :goto_3
    const-string v3, "NfcService"

    const-string v4, "checking on firmware download"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    const-string v3, "debug.nfc.fw_boot_download"

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1441
    const-string v3, "NfcService"

    const-string v4, "FW boot download: Checking firmware version"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost;->checkFirmware()V

    .line 1449
    :cond_5
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "airplane_override"

    invoke-interface {v3, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1452
    .local v0, "airplaneOverride":Z
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/nfc/HtcUtils;->getNfcOnOffAccConfig(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)I

    move-result v3

    packed-switch v3, :pswitch_data_2

    .line 1466
    :goto_4
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "nfc_on"

    invoke-interface {v3, v4, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v3, v3, Lcom/android/nfc/NfcService;->mIsAirplaneSensitive:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3}, Lcom/android/nfc/NfcService;->isAirplaneModeOn()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v0, :cond_7

    .line 1468
    :cond_6
    const-string v3, "NfcService"

    const-string v4, "NFC is on. Doing normal stuff"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->enableInternal()Z

    .line 1479
    :cond_7
    if-eqz v1, :cond_9

    .line 1480
    const-string v3, "NfcService"

    const-string v4, "First Boot"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "first_boot"

    invoke-interface {v3, v4, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1482
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1483
    invoke-static {}, Lcom/android/nfc/HtcUtils;->isNxpCodebase()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->executeEeWipe()V

    goto/16 :goto_0

    .line 1436
    .end local v0    # "airplaneOverride":Z
    .restart local v2    # "showlog":Z
    :cond_8
    if-nez v2, :cond_4

    :try_start_1
    const-string v3, "NfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TASK_BOOT: escape the delay: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 1454
    .end local v2    # "showlog":Z
    .restart local v0    # "airplaneOverride":Z
    :pswitch_6
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3, v9}, Lcom/android/nfc/NfcService;->saveNfcOnSetting(Z)V

    goto :goto_4

    .line 1457
    :pswitch_7
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3, v8}, Lcom/android/nfc/NfcService;->saveNfcOnSetting(Z)V

    goto :goto_4

    .line 1485
    :cond_9
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v9, :cond_0

    .line 1487
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/android/nfc/NfcService;->mState:Ljava/lang/Integer;

    .line 1488
    invoke-virtual {p0, v9}, Lcom/android/nfc/NfcService$EnableDisableTask;->updateState(I)V

    goto/16 :goto_0

    .line 1493
    .end local v0    # "airplaneOverride":Z
    .end local v1    # "firstBoot":Z
    :pswitch_8
    invoke-static {}, Lcom/android/nfc/HtcUtils;->isNxpCodebase()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->executeEeWipe()V

    goto/16 :goto_0

    .line 1496
    :pswitch_9
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-virtual {v3}, Lcom/android/nfc/NfcService$NfcAdapterService;->isReaderWriterEnabled()Z

    move-result v3

    if-nez v3, :cond_a

    .line 1497
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-virtual {v3}, Lcom/android/nfc/NfcService$NfcAdapterService;->disableReaderWriter()Z

    .line 1499
    :cond_a
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-virtual {v3}, Lcom/android/nfc/NfcService$NfcAdapterService;->isP2PEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1500
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-virtual {v3}, Lcom/android/nfc/NfcService$NfcAdapterService;->disableP2P()Z

    goto/16 :goto_0

    .line 1396
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1413
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_1
        :pswitch_9
    .end packed-switch

    .line 1452
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method enableInternal()Z
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1646
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/android/nfc/DeviceHost;->doSetVenConfigValue(I)V

    .line 1647
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 1729
    :cond_0
    :goto_0
    return v1

    .line 1651
    :cond_1
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v3, v3, Lcom/android/nfc/NfcService;->mIsMdmLockEnabled:Z

    if-eqz v3, :cond_2

    .line 1652
    const-string v1, "NfcService"

    const-string v3, "NFC is locked now!"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1653
    goto :goto_0

    .line 1656
    :cond_2
    const-string v3, "NfcService"

    const-string v4, "Enabling NFC"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/nfc/NfcService$EnableDisableTask;->updateState(I)V

    .line 1659
    new-instance v0, Lcom/android/nfc/NfcService$WatchDogThread;

    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    const-string v4, "enableInternal"

    const/16 v5, 0x7530

    invoke-direct {v0, v3, v4, v5}, Lcom/android/nfc/NfcService$WatchDogThread;-><init>(Lcom/android/nfc/NfcService;Ljava/lang/String;I)V

    .line 1660
    .local v0, "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    invoke-virtual {v0}, Lcom/android/nfc/NfcService$WatchDogThread;->start()V

    .line 1662
    :try_start_0
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$900(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1663
    invoke-static {}, Lcom/android/nfc/HtcUtils;->isParseATR_forSWPInit()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1664
    invoke-static {}, Lcom/android/nfc/HtcUtils;->isSkipSWPInitialization()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1666
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost;->initialize()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1667
    const-string v1, "NfcService"

    const-string v3, "Error enabling NFC"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;->updateState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1672
    :try_start_2
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$900(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1675
    invoke-virtual {v0}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    move v1, v2

    goto :goto_0

    .line 1672
    :cond_4
    :try_start_3
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$900(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1675
    invoke-virtual {v0}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    .line 1678
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v3, v3, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v3, :cond_5

    .line 1680
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {}, Lcom/android/nfc/HtcUtils;->getNfcDefaultProtocolRoute()I

    move-result v4

    # setter for: Lcom/android/nfc/NfcService;->DEFAULT_ROUTE_ID_DEFAULT:I
    invoke-static {v3, v4}, Lcom/android/nfc/NfcService;->access$1002(Lcom/android/nfc/NfcService;I)I

    .line 1681
    const-string v3, "NfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Def route id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->DEFAULT_ROUTE_ID_DEFAULT:I
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    :cond_5
    invoke-static {}, Lcom/android/nfc/HtcUtils;->isNxpNciCodebase()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1685
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->checkSecureElementConfuration()V

    .line 1687
    :cond_6
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v1, v3, Lcom/android/nfc/NfcService;->mIsRouteForced:Z

    .line 1688
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v3, v3, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v3, :cond_7

    .line 1690
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onNfcEnabled()V

    .line 1692
    :cond_7
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v2, v3, Lcom/android/nfc/NfcService;->mIsRouteForced:Z

    .line 1694
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 1695
    :try_start_4
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1696
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1697
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v4, v4, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    invoke-virtual {v3, v4, v1}, Lcom/android/nfc/P2pLinkManager;->enableDisable(ZZ)V

    .line 1698
    invoke-virtual {p0, v6}, Lcom/android/nfc/NfcService$EnableDisableTask;->updateState(I)V

    .line 1700
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3}, Lcom/android/nfc/NfcService;->initSoundPool()V

    .line 1704
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$1200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ScreenStateHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v4

    iput v4, v3, Lcom/android/nfc/NfcService;->mScreenState:I

    .line 1705
    const-string v3, "NfcService"

    const-string v4, "applyRouting -3"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v1, v3, Lcom/android/nfc/NfcService;->mIsRoutingTableDirty:Z

    .line 1707
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3, v1}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 1709
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-virtual {v3}, Lcom/android/nfc/NfcService$NfcAdapterService;->isReaderWriterEnabled()Z

    move-result v3

    if-nez v3, :cond_8

    .line 1710
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "disable_readwrite_for_call"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1711
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-virtual {v3}, Lcom/android/nfc/NfcService$NfcAdapterService;->enableReaderWriter()Z

    .line 1712
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "disable_readwrite_for_call"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1713
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1714
    sget-boolean v3, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v3, :cond_8

    const-string v3, "NfcService"

    const-string v4, "Enable RW mode again since it was disabled due to phone call previously."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    :cond_8
    :goto_1
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-virtual {v3}, Lcom/android/nfc/NfcService$NfcAdapterService;->isP2PEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1720
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "disable_p2p_for_call"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1721
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-virtual {v3}, Lcom/android/nfc/NfcService$NfcAdapterService;->enableP2P()Z

    .line 1722
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "disable_p2p_for_call"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1723
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1724
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "NfcService"

    const-string v3, "Enable P2P mode again since it was disabled due to phone call previously."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1672
    :catchall_0
    move-exception v1

    :try_start_5
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$900(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1675
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    throw v1

    .line 1696
    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1

    .line 1716
    :cond_9
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-virtual {v3}, Lcom/android/nfc/NfcService$NfcAdapterService;->disableReaderWriter()Z

    goto :goto_1

    .line 1726
    :cond_a
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService$NfcAdapterService;->disableP2P()Z

    goto/16 :goto_0
.end method

.method executeEeWipe()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    .line 1829
    iget-object v9, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v9}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/nfc/DeviceHost;->getWipeApdus()[[B

    move-result-object v0

    .line 1831
    .local v0, "apdus":[[B
    if-nez v0, :cond_0

    .line 1832
    const-string v9, "NfcService"

    const-string v10, "No wipe APDUs found"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    :goto_0
    return-void

    .line 1836
    :cond_0
    iget-object v9, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v9, v9, Lcom/android/nfc/NfcService;->mState:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v7, :cond_1

    .line 1838
    .local v7, "tempEnable":Z
    :goto_1
    iget-object v9, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v9}, Lcom/android/nfc/NfcService;->access$1700(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1839
    new-instance v8, Lcom/android/nfc/NfcService$WatchDogThread;

    iget-object v9, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    const-string v10, "executeEeWipe"

    const/16 v11, 0x3a98

    invoke-direct {v8, v9, v10, v11}, Lcom/android/nfc/NfcService$WatchDogThread;-><init>(Lcom/android/nfc/NfcService;Ljava/lang/String;I)V

    .line 1841
    .local v8, "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    if-eqz v7, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->enableInternal()Z

    move-result v9

    if-nez v9, :cond_2

    .line 1842
    const-string v9, "NfcService"

    const-string v10, "Could not enable NFC to wipe NFC-EE"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1890
    iget-object v9, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v9}, Lcom/android/nfc/NfcService;->access$1700(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1891
    invoke-virtual {v8}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    goto :goto_0

    .line 1836
    .end local v7    # "tempEnable":Z
    .end local v8    # "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 1847
    .restart local v7    # "tempEnable":Z
    .restart local v8    # "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    :cond_2
    const/4 v3, 0x0

    .line 1849
    .local v3, "handle":I
    :try_start_1
    const-string v9, "NfcService"

    const-string v10, "Executing SE wipe"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    invoke-virtual {v8}, Lcom/android/nfc/NfcService$WatchDogThread;->start()V

    .line 1851
    iget-object v9, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v9}, Lcom/android/nfc/NfcService;->doOpenSecureElementConnection()I

    move-result v3

    .line 1852
    const/4 v9, -0x6

    if-lt v3, v9, :cond_5

    if-gtz v3, :cond_5

    .line 1853
    const-string v9, "NfcService"

    const-string v10, "Could not open the secure element"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1876
    if-ltz v3, :cond_3

    .line 1877
    :try_start_2
    iget-object v9, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v9, v3}, Lcom/android/nfc/NfcService;->doDisconnect(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1881
    :cond_3
    if-eqz v7, :cond_4

    .line 1882
    :try_start_3
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->disableInternal()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1890
    :goto_2
    iget-object v9, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v9}, Lcom/android/nfc/NfcService;->access$1700(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1891
    invoke-virtual {v8}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    goto :goto_0

    .line 1884
    :cond_4
    :try_start_4
    const-string v9, "NfcService"

    const-string v10, "Refresh NFC state once to workaround NFC polling failure after SE Wipe"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->disableInternal()Z

    .line 1886
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->enableInternal()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 1890
    .end local v3    # "handle":I
    :catchall_0
    move-exception v9

    iget-object v10, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v10}, Lcom/android/nfc/NfcService;->access$1700(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1891
    invoke-virtual {v8}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    throw v9

    .line 1858
    .restart local v3    # "handle":I
    :cond_5
    const-wide/16 v10, 0x3e8

    :try_start_5
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1863
    :goto_3
    :try_start_6
    iget-object v9, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v9}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v9

    const/4 v10, 0x3

    const/16 v11, 0x2710

    invoke-interface {v9, v10, v11}, Lcom/android/nfc/DeviceHost;->setTimeout(II)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1865
    move-object v1, v0

    .local v1, "arr$":[[B
    :try_start_7
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_4
    if-ge v4, v5, :cond_6

    aget-object v2, v1, v4

    .line 1866
    .local v2, "cmd":[B
    iget-object v9, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v9, v3, v2}, Lcom/android/nfc/NfcService;->doTransceiveNoLock(I[B)[B

    move-result-object v6

    .line 1867
    .local v6, "resp":[B
    if-nez v6, :cond_8

    .line 1868
    const-string v9, "NfcService"

    const-string v10, "Transceive failed, could not wipe NFC-EE"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1873
    .end local v2    # "cmd":[B
    .end local v6    # "resp":[B
    :cond_6
    :try_start_8
    iget-object v9, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v9}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/nfc/DeviceHost;->resetTimeouts()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1876
    if-ltz v3, :cond_7

    .line 1877
    :try_start_9
    iget-object v9, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v9, v3}, Lcom/android/nfc/NfcService;->doDisconnect(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1881
    :cond_7
    if-eqz v7, :cond_a

    .line 1882
    :try_start_a
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->disableInternal()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1890
    :goto_5
    iget-object v9, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v9}, Lcom/android/nfc/NfcService;->access$1700(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1891
    invoke-virtual {v8}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    .line 1893
    const-string v9, "NfcService"

    const-string v10, "SE wipe done"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1865
    .restart local v2    # "cmd":[B
    .restart local v6    # "resp":[B
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1873
    .end local v2    # "cmd":[B
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "resp":[B
    :catchall_1
    move-exception v9

    :try_start_b
    iget-object v10, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v10}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/nfc/DeviceHost;->resetTimeouts()V

    throw v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1876
    .end local v1    # "arr$":[[B
    :catchall_2
    move-exception v9

    if-ltz v3, :cond_9

    .line 1877
    :try_start_c
    iget-object v10, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v10, v3}, Lcom/android/nfc/NfcService;->doDisconnect(I)V

    :cond_9
    throw v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 1881
    :catchall_3
    move-exception v9

    if-eqz v7, :cond_b

    .line 1882
    :try_start_d
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->disableInternal()Z

    .line 1886
    :goto_6
    throw v9

    .line 1884
    .restart local v1    # "arr$":[[B
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    :cond_a
    const-string v9, "NfcService"

    const-string v10, "Refresh NFC state once to workaround NFC polling failure after SE Wipe"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->disableInternal()Z

    .line 1886
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->enableInternal()Z

    goto :goto_5

    .line 1884
    .end local v1    # "arr$":[[B
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_b
    const-string v10, "NfcService"

    const-string v11, "Refresh NFC state once to workaround NFC polling failure after SE Wipe"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->disableInternal()Z

    .line 1886
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->enableInternal()Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_6

    .line 1859
    :catch_0
    move-exception v9

    goto/16 :goto_3
.end method

.method getChipName()I
    .locals 3

    .prologue
    .line 1736
    const-string v1, "NfcService"

    const-string v2, "Starting getChipName"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->getChipVer()I

    move-result v0

    .line 1738
    .local v0, "Ver":I
    return v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1392
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/NfcService$EnableDisableTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 1532
    return-void
.end method

.method updateState(I)V
    .locals 4
    .param p1, "newState"    # I

    .prologue
    .line 1897
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v1, Lcom/android/nfc/NfcService;->mState:Ljava/lang/Integer;

    monitor-enter v2

    .line 1898
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 1899
    monitor-exit v2

    .line 1908
    :goto_0
    return-void

    .line 1901
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/android/nfc/NfcService;->mState:Ljava/lang/Integer;

    .line 1902
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1903
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1904
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1905
    const-string v1, "android.nfc.extra.ADAPTER_STATE"

    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mState:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1906
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1907
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/nfc/HtcUtils;->updateNfcIcon(I)V

    goto :goto_0

    .line 1902
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
