.class public Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;
.super Ljava/lang/Object;
.source "HtcTelephonyManager.java"


# static fields
.field private static classComHtcServiceHtcTelephonyManager:Ljava/lang/Class;

.field private static classIHtcTelephony:Ljava/lang/Class;

.field private static methodCDMAEndCall:Ljava/lang/reflect/Method;

.field private static methodComHtcServiceHtcTelephonyManagerGetDefault:Ljava/lang/reflect/Method;

.field private static methodComHtcServiceHtcTelephonyManagerGetIccOperator:Ljava/lang/reflect/Method;

.field private static methodComHtcServiceHtcTelephonyManagerIsNetworkRoamingExt:Ljava/lang/reflect/Method;

.field private static methodDialWithoutDelay:Ljava/lang/reflect/Method;

.field private static methodDualGSMPhoneEnable:Ljava/lang/reflect/Method;

.field private static methodDualPhoneEnable:Ljava/lang/reflect/Method;

.field private static methodGeneralGetter:Ljava/lang/reflect/Method;

.field private static methodGetCFUNumber:Ljava/lang/reflect/Method;

.field private static methodGetCallStateExt:Ljava/lang/reflect/Method;

.field private static methodGetCompleteVoiceMailNumberExt:Ljava/lang/reflect/Method;

.field private static methodGetCurrentSlotPhoneType:Ljava/lang/reflect/Method;

.field private static methodGetDetailIccStatus:Ljava/lang/reflect/Method;

.field private static methodGetDetailIccStatusExt:Ljava/lang/reflect/Method;

.field private static methodGetDeviceIdExt:Ljava/lang/reflect/Method;

.field private static methodGetHtcServiceStateExt:Ljava/lang/reflect/Method;

.field private static methodGetIccOperator:Ljava/lang/reflect/Method;

.field private static methodGetIccState:Ljava/lang/reflect/Method;

.field private static methodGetNetworkOperatorExt:Ljava/lang/reflect/Method;

.field private static methodGetNetworkTypeExt:Ljava/lang/reflect/Method;

.field private static methodGetServiceState:Ljava/lang/reflect/Method;

.field private static methodGetSubsidyLockTypes:Ljava/lang/reflect/Method;

.field private static methodGetVTLoopBackMode:Ljava/lang/reflect/Method;

.field private static methodGetVTSimulatedMode:Ljava/lang/reflect/Method;

.field private static methodHandlePinMmi:Ljava/lang/reflect/Method;

.field private static methodHasIccCardExt:Ljava/lang/reflect/Method;

.field private static methodIHtcTelephonyGeneralGetter:Ljava/lang/reflect/Method;

.field private static methodIHtcTelephonyGeneralGetterInternal:Ljava/lang/reflect/Method;

.field private static methodIHtcTelephonyGeneralSetter:Ljava/lang/reflect/Method;

.field private static methodIHtcTelephonyGeneralSetterInternal:Ljava/lang/reflect/Method;

.field private static methodIHtcTelephonyInternalSendAT_PushMail:Ljava/lang/reflect/Method;

.field private static methodIHtcTelephonyInternalStubAsInterface:Ljava/lang/reflect/Method;

.field private static methodIHtcTelephonyStubAsInterface:Ljava/lang/reflect/Method;

.field private static methodMissedCallNotification:Ljava/lang/reflect/Method;

.field private static methodPerformHtcPhoneActionActionExt:Ljava/lang/reflect/Method;

.field private static methodSendAT_BRIC:Ljava/lang/reflect/Method;

.field private static methodServiceManagerGetService:Ljava/lang/reflect/Method;

.field private static methodSetVTLoopBackMode:Ljava/lang/reflect/Method;

.field private static methodSetVTSimulatedMode:Ljava/lang/reflect/Method;

.field private static methodShowIncallScreen:Ljava/lang/reflect/Method;

.field private static methodSupplyPinExt:Ljava/lang/reflect/Method;

.field private static methodSupplyPukExt:Ljava/lang/reflect/Method;

.field private static methodSupplySubsidyLockPin:Ljava/lang/reflect/Method;

.field private static methodUnBlockPin:Ljava/lang/reflect/Method;

.field private static methodhtcCdmaExitRadioPowerSaveMode:Ljava/lang/reflect/Method;

.field private static sInstance:Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    new-instance v0, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;

    invoke-direct {v0}, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;-><init>()V

    sput-object v0, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->sInstance:Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;

    .line 59
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->classComHtcServiceHtcTelephonyManager:Ljava/lang/Class;

    .line 67
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->classIHtcTelephony:Ljava/lang/Class;

    .line 75
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodDualGSMPhoneEnable:Ljava/lang/reflect/Method;

    .line 83
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodDualPhoneEnable:Ljava/lang/reflect/Method;

    .line 135
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodServiceManagerGetService:Ljava/lang/reflect/Method;

    .line 163
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodIHtcTelephonyInternalStubAsInterface:Ljava/lang/reflect/Method;

    .line 195
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodIHtcTelephonyStubAsInterface:Ljava/lang/reflect/Method;

    .line 251
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodIHtcTelephonyInternalSendAT_PushMail:Ljava/lang/reflect/Method;

    .line 300
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodComHtcServiceHtcTelephonyManagerGetDefault:Ljava/lang/reflect/Method;

    .line 315
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodComHtcServiceHtcTelephonyManagerGetIccOperator:Ljava/lang/reflect/Method;

    .line 389
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodComHtcServiceHtcTelephonyManagerIsNetworkRoamingExt:Ljava/lang/reflect/Method;

    .line 446
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodGeneralGetter:Ljava/lang/reflect/Method;

    .line 507
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodIHtcTelephonyGeneralGetter:Ljava/lang/reflect/Method;

    .line 554
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodIHtcTelephonyGeneralGetterInternal:Ljava/lang/reflect/Method;

    .line 602
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodIHtcTelephonyGeneralSetter:Ljava/lang/reflect/Method;

    .line 642
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodIHtcTelephonyGeneralSetterInternal:Ljava/lang/reflect/Method;

    .line 679
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodGetNetworkTypeExt:Ljava/lang/reflect/Method;

    .line 753
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodHasIccCardExt:Ljava/lang/reflect/Method;

    .line 822
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodGetCFUNumber:Ljava/lang/reflect/Method;

    .line 878
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodGetIccState:Ljava/lang/reflect/Method;

    .line 952
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodShowIncallScreen:Ljava/lang/reflect/Method;

    .line 1000
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodCDMAEndCall:Ljava/lang/reflect/Method;

    .line 1051
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodGetDetailIccStatus:Ljava/lang/reflect/Method;

    .line 1064
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodGetDetailIccStatusExt:Ljava/lang/reflect/Method;

    .line 1155
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodGetSubsidyLockTypes:Ljava/lang/reflect/Method;

    .line 1208
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodUnBlockPin:Ljava/lang/reflect/Method;

    .line 1261
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodSupplySubsidyLockPin:Ljava/lang/reflect/Method;

    .line 1312
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodSupplyPinExt:Ljava/lang/reflect/Method;

    .line 1368
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodSupplyPukExt:Ljava/lang/reflect/Method;

    .line 1425
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodDialWithoutDelay:Ljava/lang/reflect/Method;

    .line 1477
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodGetCallStateExt:Ljava/lang/reflect/Method;

    .line 1531
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodMissedCallNotification:Ljava/lang/reflect/Method;

    .line 1579
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodGetServiceState:Ljava/lang/reflect/Method;

    .line 1628
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodGetHtcServiceStateExt:Ljava/lang/reflect/Method;

    .line 1684
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodGetCurrentSlotPhoneType:Ljava/lang/reflect/Method;

    .line 1751
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodPerformHtcPhoneActionActionExt:Ljava/lang/reflect/Method;

    .line 1819
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodGetCompleteVoiceMailNumberExt:Ljava/lang/reflect/Method;

    .line 1860
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodhtcCdmaExitRadioPowerSaveMode:Ljava/lang/reflect/Method;

    .line 1918
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodHandlePinMmi:Ljava/lang/reflect/Method;

    .line 1987
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodGetDeviceIdExt:Ljava/lang/reflect/Method;

    .line 2053
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodGetIccOperator:Ljava/lang/reflect/Method;

    .line 2114
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodSendAT_BRIC:Ljava/lang/reflect/Method;

    .line 2168
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodGetNetworkOperatorExt:Ljava/lang/reflect/Method;

    .line 2228
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodGetVTSimulatedMode:Ljava/lang/reflect/Method;

    .line 2290
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodSetVTSimulatedMode:Ljava/lang/reflect/Method;

    .line 2341
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodGetVTLoopBackMode:Ljava/lang/reflect/Method;

    .line 2404
    sput-object v1, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodSetVTLoopBackMode:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static dualGSMPhoneEnable()Z
    .locals 3

    .prologue
    .line 97
    :try_start_0
    invoke-static {}, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->getDualGSMPhoneEnableMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_0

    .line 100
    const/4 v2, 0x0

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 107
    :goto_0
    return v0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v0

    .line 107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static dualPhoneEnable()Z
    .locals 3

    .prologue
    .line 117
    :try_start_0
    invoke-static {}, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->getDualPhoneEnableMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 119
    if-eqz v1, :cond_0

    .line 120
    const/4 v2, 0x0

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 127
    :goto_0
    return v0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v0

    .line 127
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getComHtcServiceHtcTelephonyManagerClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->classComHtcServiceHtcTelephonyManager:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 62
    const-string v0, "com.htc.service.HtcTelephonyManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->classComHtcServiceHtcTelephonyManager:Ljava/lang/Class;

    .line 64
    :cond_0
    sget-object v0, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->classComHtcServiceHtcTelephonyManager:Ljava/lang/Class;

    return-object v0
.end method

.method public static getDefault()Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->sInstance:Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;

    return-object v0
.end method

.method private static getDualGSMPhoneEnableMethod()Ljava/lang/reflect/Method;
    .locals 3

    .prologue
    .line 77
    sget-object v0, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodDualGSMPhoneEnable:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 78
    invoke-static {}, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->getComHtcServiceHtcTelephonyManagerClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "dualGSMPhoneEnable"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodDualGSMPhoneEnable:Ljava/lang/reflect/Method;

    .line 80
    :cond_0
    sget-object v0, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodDualGSMPhoneEnable:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private static getDualPhoneEnableMethod()Ljava/lang/reflect/Method;
    .locals 3

    .prologue
    .line 85
    sget-object v0, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodDualPhoneEnable:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 86
    invoke-static {}, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->getComHtcServiceHtcTelephonyManagerClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "dualPhoneEnable"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodDualPhoneEnable:Ljava/lang/reflect/Method;

    .line 88
    :cond_0
    sget-object v0, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodDualPhoneEnable:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private getIHtcTelephony()Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 216
    invoke-static {}, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->getIHtcTelephonyStubAsInterfaceMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 217
    const-string v2, "htctelephony"

    invoke-direct {p0, v2}, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->getServiceFromServiceManager(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 219
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 220
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 224
    :cond_0
    return-object v0
.end method

.method private static getIHtcTelephonyClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->classIHtcTelephony:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 70
    const-string v0, "com.android.internal.telephony.IHtcTelephony"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->classIHtcTelephony:Ljava/lang/Class;

    .line 72
    :cond_0
    sget-object v0, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->classIHtcTelephony:Ljava/lang/Class;

    return-object v0
.end method

.method private static getIHtcTelephonyStubAsInterfaceMethod()Ljava/lang/reflect/Method;
    .locals 5

    .prologue
    .line 197
    sget-object v0, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodIHtcTelephonyStubAsInterface:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 198
    const-string v0, "com.android.internal.telephony.IHtcTelephony$Stub"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 200
    if-nez v0, :cond_0

    .line 201
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v0

    .line 203
    :cond_0
    const-string v1, "asInterface"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/IBinder;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodIHtcTelephonyStubAsInterface:Ljava/lang/reflect/Method;

    .line 206
    :cond_1
    sget-object v0, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodIHtcTelephonyStubAsInterface:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private getServiceFromServiceManager(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 153
    invoke-static {}, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->getServiceManagerGetServiceMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 155
    if-eqz v1, :cond_0

    .line 156
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 160
    :cond_0
    return-object v0
.end method

.method private static getServiceManagerGetServiceMethod()Ljava/lang/reflect/Method;
    .locals 5

    .prologue
    .line 137
    sget-object v0, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodServiceManagerGetService:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 138
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 139
    if-nez v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v0

    .line 142
    :cond_0
    const-string v1, "getService"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodServiceManagerGetService:Ljava/lang/reflect/Method;

    .line 145
    :cond_1
    sget-object v0, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodServiceManagerGetService:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private static getShowIncallScreenMethod()Ljava/lang/reflect/Method;
    .locals 3

    .prologue
    .line 954
    sget-object v0, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodShowIncallScreen:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 955
    invoke-static {}, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->getIHtcTelephonyClass()Ljava/lang/Class;

    move-result-object v0

    .line 957
    if-nez v0, :cond_0

    .line 958
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v0

    .line 960
    :cond_0
    const-string v1, "showIncallScreen"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodShowIncallScreen:Ljava/lang/reflect/Method;

    .line 964
    :cond_1
    sget-object v0, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->methodShowIncallScreen:Ljava/lang/reflect/Method;

    return-object v0
.end method


# virtual methods
.method public showIncallScreen()V
    .locals 4

    .prologue
    .line 972
    :try_start_0
    invoke-direct {p0}, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->getIHtcTelephony()Ljava/lang/Object;

    move-result-object v0

    .line 973
    if-nez v0, :cond_0

    .line 974
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 984
    :catch_0
    move-exception v0

    .line 985
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 998
    :goto_0
    return-void

    .line 976
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->getShowIncallScreenMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 977
    if-eqz v1, :cond_1

    .line 978
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 987
    :catch_1
    move-exception v0

    .line 988
    throw v0

    .line 982
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 990
    :catch_2
    move-exception v0

    .line 991
    const-string v1, "HtcTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showIncallScreen() remote exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 993
    :catch_3
    move-exception v0

    .line 994
    const-string v1, "HtcTelephonyManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v0
.end method
