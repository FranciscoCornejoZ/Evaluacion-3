import { Router } from 'express'
import * as videoController from '../controllers/video.controller.js'
import { authToken } from '../middlewares/video.middleware.js'

const router = Router()

router.get('/video', authToken, videoController.findAll)
router.get('/video/:id', videoController.findById)
router.post('/video', videoController.create)
router.put('/video/:id', videoController.updateById)
router.delete('/video/:id', videoController.deleteById)

export default router