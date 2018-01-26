LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := cocos2dcpp_shared

LOCAL_MODULE_FILENAME := libcocos2dcpp

LOCAL_SRC_FILES := hellocpp/main.cpp \
                   ../../Classes/AppDelegate.cpp \
                   ../../Classes/Layer/GMAchievementLayer.cpp \
                   ../../Classes/Layer/GMAchievementPrompt.cpp \
                   ../../Classes/Layer/GMBootModeLayer.cpp \
                   ../../Classes/Layer/GMCardLayer.cpp \
                   ../../Classes/Layer/GMCartoonLayer.cpp \
                   ../../Classes/Layer/GMElementLayer.cpp \
                   ../../Classes/Layer/GMGameLayer.cpp \
                   ../../Classes/Layer/GMHelpLayer.cpp \
                   ../../Classes/Layer/GMIntroLayer.cpp \
                   ../../Classes/Layer/GMLoseLayer.cpp \
                   ../../Classes/Layer/GMMainLayer.cpp \
                   ../../Classes/Layer/GMMenuLayer.cpp \
                   ../../Classes/Layer/GMPauseLayer.cpp \
                   ../../Classes/Layer/GMTargetLayer.cpp \
                   ../../Classes/Layer/GMWheelLayer.cpp \
                   ../../Classes/Layer/GMWinLayer.cpp \
                   ../../Classes/Models/CountBullet.cpp \
                   ../../Classes/Models/GMAchievement.cpp \
                   ../../Classes/Models/GMBoss1Action.cpp \
                   ../../Classes/Models/GMBossOctopus.cpp \
                   ../../Classes/Models/GMBossPoseidon.cpp \
                   ../../Classes/Models/GMBossStarfishKing.cpp \
                   ../../Classes/Models/GMBullet.cpp \
                   ../../Classes/Models/GMCheckpoints.cpp \
                   ../../Classes/Models/GMCheckpointsList.cpp \
                   ../../Classes/Models/GMEnemy.cpp \
                   ../../Classes/Models/GMEnemyAction.cpp \
                   ../../Classes/Models/GMFishBullet.cpp \
                   ../../Classes/Models/GMGoods.cpp \
                   ../../Classes/Models/GMNet.cpp \
                   ../../Classes/Models/GMPoint.cpp \
                   ../../Classes/Models/GMStrange.cpp \
                   ../../Classes/Models/GMTask.cpp \
                   ../../Classes/PublicModels/CCLagrange.cpp \
                   ../../Classes/PublicModels/CursorTextField.cpp \
                   ../../Classes/PublicModels/DataBase64Himi.cpp \
                   ../../Classes/PublicModels/GMAccessData.cpp \
                   ../../Classes/PublicModels/GMAudioPlay.cpp \
                   ../../Classes/PublicModels/GMBillingLayer.cpp \
                   ../../Classes/PublicModels/GMNoTouchLayer.cpp \
                   ../../Classes/PublicModels/GMPublicMethod.cpp \
                   ../../Classes/PublicModels/LRActionInterval.cpp \
                   ../../Classes/PublicModels/UINumber.cpp \
                   ../../Classes/PublicModels/UIRollNum.cpp \
                   ../../Classes/PublicModels/ZPDialogLayer.cpp \
                   ../../Classes/PublicModels/ZPJNIHelper.cpp
                   

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../Classes

LOCAL_WHOLE_STATIC_LIBRARIES += cocos2dx_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocosdenshion_static
LOCAL_WHOLE_STATIC_LIBRARIES += box2d_static
LOCAL_WHOLE_STATIC_LIBRARIES += chipmunk_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocos_extension_static

include $(BUILD_SHARED_LIBRARY)

$(call import-module,cocos2dx)
$(call import-module,cocos2dx/platform/third_party/android/prebuilt/libcurl)
$(call import-module,CocosDenshion/android)
$(call import-module,extensions)
$(call import-module,external/Box2D)
$(call import-module,external/chipmunk)
